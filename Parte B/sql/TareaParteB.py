import mariadb
import sys

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
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


query_create = "CREATE DATABASE TareaParteB"
cur.execute(query_create)
cur.execute("USE TareaParteB")

# Creación de las tablas
cur.execute("CREATE TABLE Pais (nombre_pais VARCHAR(50), PRIMARY KEY(nombre_pais));")

cur.execute("CREATE TABLE region (nombre_reg VARCHAR(50), nombre_pais VARCHAR(50), PRIMARY KEY(nombre_reg), FOREIGN KEY (nombre_pais) REFERENCES Pais(nombre_pais));")

cur.execute("CREATE TABLE comuna (ID_COM VARCHAR(50), nombre_com VARCHAR(50), poblacion INT, densidad_hab FLOAT, provincia VARCHAR(50), nombre_reg VARCHAR(50), PRIMARY KEY(ID_COM), FOREIGN KEY (nombre_reg) REFERENCES region(nombre_reg));")

cur.execute("CREATE TABLE salud (ID_S VARCHAR(50), tipo VARCHAR(50), PRIMARY KEY(ID_S));")

cur.execute("CREATE TABLE educacion (ID_E VARCHAR(50), tipo VARCHAR(50), PRIMARY KEY(ID_E));")

cur.execute("CREATE TABLE seguridad (ID_SEG VARCHAR(50), tipo VARCHAR(50), PRIMARY KEY(ID_SEG));")

cur.execute("CREATE TABLE entretencion (ID_EN VARCHAR(50), tipo VARCHAR(50), PRIMARY KEY(ID_EN));")

cur.execute("CREATE TABLE tiene_sal (ID_S VARCHAR(50), ID_COM VARCHAR(50), n_edificios INT, PRIMARY KEY (ID_S, ID_COM), FOREIGN KEY (ID_S) REFERENCES salud(ID_S), FOREIGN KEY (ID_COM) REFERENCES comuna(ID_COM));")

cur.execute("CREATE TABLE tiene_ed (ID_E VARCHAR(50), ID_COM VARCHAR(50), n_edificios INT, PRIMARY KEY (ID_E, ID_COM), FOREIGN KEY (ID_E) REFERENCES educacion(ID_E), FOREIGN KEY (ID_COM) REFERENCES comuna(ID_COM));")

cur.execute("CREATE TABLE tiene_seg (ID_SEG VARCHAR(50), ID_COM VARCHAR(50), n_edificios INT, PRIMARY KEY (ID_SEG, ID_COM), FOREIGN KEY (ID_SEG) REFERENCES seguridad(ID_SEG), FOREIGN KEY (ID_COM) REFERENCES comuna(ID_COM));")

cur.execute("CREATE TABLE tiene_ent (ID_EN VARCHAR(50), ID_COM VARCHAR(50), n_edificios INT, PRIMARY KEY (ID_EN, ID_COM), FOREIGN KEY (ID_EN) REFERENCES entretencion(ID_EN), FOREIGN KEY (ID_COM) REFERENCES comuna(ID_COM));")

conn.commit() 
conn.close()