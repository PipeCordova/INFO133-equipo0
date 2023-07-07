# Programa para insertar Datos en la Base De Datos TareaParteA
import mariadb
import sys

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


cur = conn.cursor()



def main():
    while True:
        consulta = input("Ingrese tu consulta SQL: ")
        try:
            cur.execute(consulta)
            resultado = cur.fetchall()
            for elem in resultado:
                print(" | ".join(str(atrib) for atrib in elem))
        except mariadb.Error as error:
            print(f"Consulta Invalida: {error}")
            sys.exit(1)

        continuar = input("Quieres hacer otra consulta? (s/n): ")
        if continuar.lower() == "n":
            conn.close()
            print("bye")
        break
            
main()