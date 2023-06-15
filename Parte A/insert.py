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

def nuevoMedio() -> None:
    
    # Get Cursor
    cur = conn.cursor()

    #atributos tablas
    atriMedio = ["id_medio" , "nombre", "fundacion", "covertura" ,"id_ubi"]
    atriubi = ["id_ubi","continente","pais","region","cuidad"]
    atriRedSocial = ["nombre","cuenta","act_seguidores","seguidores"]
    
    #creacion arreglos para los datos de las tablas 
    ubi = []
    medio = [] 
    redSocial = []
    
    #relleno datos para de los arreglos
    #!!!!!!!!!!!!!!!!!
    medio.append( 1 ) # c falta ambiar por id 
    #!!!!!!!!!!!!!!!!
    medio.append(input("Ingrese Nombre del medio de prensa: "))
    medio.append(input("Ingrese Fundacion con formato YYYY-MM-DD: "))
    medio.append(input("Ingrese Covertura del medio de prensa: "))
    # !!!!!!!!!!1
    ubi.append(1) # falta cambiar id_ubi
    medio.append(1) # falta cambiar con id_ubi
    # !!!!!!!!!!!!1
    
    
    ubi.append(input("Ingrese Contiente del medio de prensa: "))
    ubi.append(input("Ingrese Pais del medio de prensa: "))
    ubi.append(input("Ingrese Region del medio de prensa: "))
    ubi.append(input("Ingrese Cuidad del medio de prensa: "))
    fundador = "" + input("Ingrese fundador/o fundadores separados por comas:")
    
    num = input("Ingrese cuantas redes sociales ingresara: ")
    for i in range(int(num)):
        redSocial.append(input("Ingrese Nombre Red social: "))
        redSocial.append(input("Ingrese el nombre de usuario de la red social:"))
        redSocial.append(input("Ingrese Fecha del registro de los seguidores en formato YYYY-MM-DD: "))
        redSocial.append(input("Cantidad de seguidores: "))
        
    
                                     ## Rellenando tablas
                                     
   #llenado atributos de ubicacion
    for a in range(len(atriubi)):
        cur.execute(f'UPDATE ubicacion SET {atriubi[a]}={ubi[a]};')
        
    #llenado aributos de medio_prensa
    for a in range(len(atriMedio)-1):
        cur.execute(f"UPDATE medio_prensa SET {atriMedio[a]}={medio[a]};" ) 
    cur.execute(f"UPDATE medio_prensa SET {atriMedio[len(atriMedio)]} = {medio[len(medio)]};")
    
    
    #llenado atributos de red_social
    for b in range(len(atriRedSocial)):
        cur.execute(f'UPDATE red_social SET {atriRedSocial[b]}={redSocial[b]} WHERE id_medio = "{medio[0]}";')
        
        
    #llenado funddador
    ## FALTA 
    
    
    
def nuevaNotica() -> None:
    x = 0    
    
    
    
    
def main() -> None: 
    while True :
        print("****MENU****")
        print("1 Nuevo medio de prensa") 
        print("2 Nueva noticia")  
        print("CUalquier otro caracter para SALIR")
        x = input("ingrese opcion :")
        if x == "1":
            nuevoMedio()
        elif x == "2":
            nuevaNotica()
        else :
            break



main()
