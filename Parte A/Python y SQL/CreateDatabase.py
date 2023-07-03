import mariadb
import sys

# Programa para Crear la base de datos TareaParteA

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        # Cambiar user por su Usuario, y password por su contraseña de usaurio
        user="seba",
        password="seba",
        host="127.0.0.1",
        port=3306
    )

except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()


query_create = "CREATE DATABASE TareaParteA"
cur.execute(query_create)
cur.execute("USE TareaParteA")

# Creación de las tablas
cur.execute("CREATE TABLE ubicacion (ID_UBI VARCHAR(50), ciudad VARCHAR(50), region VARCHAR(50), pais VARCHAR(50), continente VARCHAR(50), PRIMARY KEY(ID_UBI) );")

cur.execute("CREATE TABLE medio_prensa (ID_MEDIO VARCHAR(50), nombre VARCHAR(50), ano_fundacion INT, cobertura VARCHAR(50), ID_UBI VARCHAR(50), PRIMARY KEY(id_medio), FOREIGN KEY (ID_UBI) REFERENCES ubicacion(ID_UBI) );")

cur.execute("CREATE TABLE red_social (nombre VARCHAR(50), cuenta VARCHAR(50), act_seguidores DATE, seguidores INT, ID_MEDIO VARCHAR(50), PRIMARY KEY(nombre, cuenta), FOREIGN KEY (ID_MEDIO) REFERENCES medio_prensa(ID_MEDIO) );")

cur.execute("CREATE TABLE sitio_web (url_sw VARCHAR(255), PRIMARY KEY(url_sw), ID_MEDIO VARCHAR(50), FOREIGN KEY (ID_MEDIO) REFERENCES medio_prensa(ID_MEDIO) );")

cur.execute("CREATE TABLE noticia (url_noti VARCHAR(255), xp_fecha VARCHAR(255), xp_titulo VARCHAR(255), xp_contenido VARCHAR(255), url_sw VARCHAR(255), PRIMARY KEY(url_noti), FOREIGN KEY (url_sw) REFERENCES sitio_web(url_sw) );")

cur.execute("CREATE TABLE categoria (nombre VARCHAR(50), XPATH VARCHAR(50), url_prin VARCHAR(255), url_ej VARCHAR(255), url_sw VARCHAR(255), PRIMARY KEY(nombre), FOREIGN KEY (url_sw) REFERENCES sitio_web(url_sw) );")

cur.execute("CREATE TABLE fundado_por (nombre VARCHAR(50), ID_MEDIO VARCHAR(50), PRIMARY KEY(nombre, ID_MEDIO), FOREIGN KEY (ID_MEDIO) REFERENCES medio_prensa(ID_MEDIO) );")


conn.commit() 
conn.close()