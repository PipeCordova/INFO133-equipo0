import mariadb
import sys

# Programa para insertar Datos en la Base De Datos TareaParteA

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        # Cambiar user por su Usuario, y password por su contraseña de usaurio
        user="seba",
        password="seba",
        host="127.0.0.1",
        port=3306,
        database="TareaParteA"
    )

except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()

def ubicacion():
    # Insertar datos en la tabla ubicacion
    id_ubi = input("Ingrese el ID de ubicación (formato UBI00): ").upper().strip()
    ciudad = input("Ingrese la ciudad: ").title().strip()
    region = input("Ingrese la región: ").title().strip()
    # pais = input("Ingrese el país: ")
    pais = "Chile" #Lo dejamos asi debido a que nuestro grupo solo trabajará con medios de prensa chilenos
    #continente = input("Ingrese el continente: ")
    continente = "America Del Sur"

    if(id_ubi != "" and ciudad != "" and region != "" ):
        cur.execute("INSERT INTO ubicacion (id_ubi, ciudad, region, pais, continente) VALUES (%s, %s, %s, %s, %s)", (id_ubi, ciudad, region, pais, continente))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nUBICACIÓN NO INGRESADA\nTe faltó ingresar algun dato!!!\n")

def medio_prensa(m):
    # Insertar datos en la tabla medio_prensa
    id_medio = m
    nombre_medio = input("Ingrese el nombre del medio de prensa: ").title().strip()
    fundacion = int(input("Ingrese el AÑO de fundación: "))
    if (fundacion == ""): fundacion = None;
    cobertura = input("Ingrese la cobertura (internacional/nacional/local): ").title().strip()
    id_ubi = input("Ingrese el ID_UBI (FK): ").upper().strip()

    if(id_medio != "" and nombre_medio != "" and cobertura != "" and id_ubi != ""):
        cur.execute("INSERT INTO medio_prensa (id_medio, nombre, ano_fundacion, cobertura, id_ubi) VALUES (%s, %s, %s, %s, %s)", (id_medio, nombre_medio, fundacion, cobertura, id_ubi))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nMEDIO DE PRENSA NO INGRESADO\nTe faltó ingresar algun dato!!!\n")


def red_social(m):
    # Insertar datos en la tabla red_social
    print("\nOpciones de redes sociales")
    print("\t(1) Instagram\n\t(2) Facebook\n\t(3) Twitter")
    opcion = input("Seleccione Red Social (1, 2, 3): ").title().strip()
    if(opcion=='1'): nombre_red_social = "Instagram"
    elif(opcion=='2'): nombre_red_social = "Facebook"
    elif(opcion=='3'): nombre_red_social = "Twitter"
    if(opcion == '1'): cuenta_red_social = input("Ingrese el nombre de la cuenta de Instagram (@nombrecuenta): ").strip()
    elif(opcion == '2'): cuenta_red_social = input("Ingrese el nombre de la cuenta de Facebook: ").strip()
    elif(opcion == '3'):cuenta_red_social = input("Ingrese el nombre de la cuenta de Twitter: ").strip()
    else:
        print("OPCION INVÁLIDA!!")
        exit()
    seguidores = input("Ingrese el número de seguidores (INT): ").strip()
    if(seguidores == ""): seguidores = None;
    act_seguidores = input("Ingrese la fecha de la última actualización de los seguidores (YYYY-MM-DD): ").strip()
    #act_seguidores = "2023-07-08" # Aqui cambiar a la fecha actual, es más comodo
    if(act_seguidores == ""): act_seguidores = None;
    id_medio = m

    if(nombre_red_social != "" and cuenta_red_social != "" and id_medio !=""):
        cur.execute("INSERT INTO red_social (nombre, cuenta, seguidores, act_seguidores, id_medio) VALUES (%s, %s, %s, %s, %s)", (nombre_red_social, cuenta_red_social, seguidores, act_seguidores, id_medio))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nRED SOCIAL NO INGRESADA\nTe faltó ingresar algun dato!!!\n")

def sitio_web(m):
    # Insertar datos en la tabla sitio_web
    url_sw = input("Ingrese la URL del sitio web: ").strip()
    id_medio = m
    if(url_sw != "" and id_medio != ""):
        cur.execute("INSERT INTO sitio_web (url_sw, id_medio) VALUES (%s, %s)", (url_sw, id_medio))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nSITIO WEB NO INGRESADO\nTe faltó ingresar algun dato!!!\n")


def noticia():
    # Insertar datos en la tabla noticia
    url_noti = input("Ingrese la URL de la noticia: ").strip()
    xp_fecha = input("Ingrese XPATH de la fecha: ").strip()
    xp_titulo = input("Ingrese XPATH del titulo: ").strip()
    xp_contenido = input("Ingrese XPATH del contenido: ").strip()
    url_sw = input("Ingrese el URL del sitio web principal (FK): ").strip()

    if(url_noti != "" and xp_fecha != "" and xp_titulo != "" and xp_contenido != "" and url_sw != ""):
        cur.execute("INSERT INTO noticia (url_noti, xp_fecha, xp_titulo, xp_contenido, url_sw) VALUES (%s, %s, %s, %s, %s)", (url_noti, xp_fecha, xp_titulo, xp_contenido, url_sw))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nNOTICIA NO INGRESADA\nTe faltó ingresar algun dato!!!\n")


def categoria():
    # Insertar datos en la tabla categoria
    nombre_categoria = input("Ingrese el nombre de la categoría: ").title().strip()
    xpath = input("Ingrese el XPATH: ").strip()
    url_prin = input("Ingrese la URL principal: ").strip()
    url_ej = input("Ingrese la URL de ejemplo: ").strip()
    url_sw = input("Ingrese el URL del sitio web (FK): ").strip()
    if(nombre_categoria != "" and xpath != "" and url_prin != "" and url_ej != "" and url_sw != ""):
        cur.execute("INSERT INTO categoria (nombre, XPATH, url_prin, url_ej, url_sw) VALUES (%s, %s, %s, %s, %s)", (nombre_categoria, xpath, url_prin, url_ej, url_sw))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nCATEGORIA NO INGRESADA\nTe faltó ingresar algun dato!!!\n")

def fundado_por(m):
    # Insertar datos en la tabla fundado_por
    nombre_fundador = input("Ingrese el nombre del fundador: ").title().strip()
    id_medio = m
    if(nombre_fundador != "" and id_medio != ""):
        cur.execute("INSERT INTO fundado_por (id_medio, nombre) VALUES (%s, %s)", (id_medio, nombre_fundador))
        print("SE HA INGRESADO CORRECTAMENTE\n")
    else:
        print("\nFUNDADO_POR NO INGRESADO\nTe faltó ingresar algun dato!!!\n")

def ingrese(m):
    print(f"ID MEDIO ACTUAL = {m}")
    m = input("Ingrese nuevo ID MEDIO (MED00): ").upper().strip()
    while(m == ""):
        m = input("Ingrese ID no vacío (MED00): ").upper().strip()
    print()
    return m


def main():
    # Falta agregar la noticia del MED17
    m = input("Ingrese ID del medio sobre el que quiere trabajar: ").upper()
    flg = True;
    while (flg):
        print(f"OPCIONES ({m})")
        print("(1) Agregar Ubicación")
        print("(2) Agregar Medio de Prensa")
        print("(3) Agregar Red Social")
        print("(4) Agregar Sitio Web")
        print("(5) Agregar Noticia")
        print("(6) Agregar Categoría")
        print("(7) Agregar Fundador")
        print("(8) Cambiar ID Medio\n")

        opcion = input("Seleccione una opcion (cualquier letra para terminar): ")

        if(opcion == "1"):
            ubicacion()
            conn.commit()
        elif(opcion == "2"):
            medio_prensa(m)
            conn.commit()
        elif(opcion == "3"):
            red_social(m)
            conn.commit()
        elif(opcion == "4"):
            sitio_web(m) 
            conn.commit()
        elif(opcion == "5"):
            noticia()
            conn.commit()
        elif(opcion == "6"):
            categoria()  
            conn.commit()
        elif(opcion == "7"):
            fundado_por(m)
            conn.commit()
        elif(opcion == "8"):
            m = ingrese(m)
        else: 
            flg = False  

    # Confirmar los cambios en la base de datos
    conn.commit()

    # Cerrar el cursor y la conexión
    cur.close()

main()





