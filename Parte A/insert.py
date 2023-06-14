

def nuevoMedio():
    medio = []  #id , nombre, fundacion, covertura ,id_ubi,continente,pais,region,cuidad,
    medio.append( 1 ) # c falta ambiar por id 
    medio.append(input("Ingrese Nombre del medio de prensa: "))
    medio.append(input("Ingrese Fundacion con formato YYYY-MM-DD: "))
    medio.append(input("Ingrese Covertura del medio de prensa: "))
    medio.append(1) # falta cambiar id_ubi
    medio.append(input("Ingrese Contiente del medio de prensa: "))
    medio.append(input("Ingrese Pais del medio de prensa: "))
    medio.append(input("Ingrese Region del medio de prensa: "))
    medio.append(input("Ingrese Cuidad del medio de prensa: "))
    fundador = "" + input("Ingrese fundador/o fundadores separados por comas:")
    redSocial = []
    num = input("ingrese cuantas redes sociales ingresara: ")
    for i in range(num):
        redSocial.append(input("Ingrese Nombre Red social: "))
        redSocial.append(input("Cantidad de segidores"))
        redSocial.append(input("Ingrese Fecha del registro de los seguidores en formato YYYY-MM-DD: "))
   ## falta 
def nuevaNotica():
    x = 0    
    
    
    
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