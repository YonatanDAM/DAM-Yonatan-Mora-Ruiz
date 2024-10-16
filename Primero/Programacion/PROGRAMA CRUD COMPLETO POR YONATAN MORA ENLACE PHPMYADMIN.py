'''PROGRAMA CRUD COMPLETO
POR YONATAN MORA RUIZ (C)
CRUD = 
C = CREATE / CREAR
R = READ / LEER
U = UPDATE / ACTUALIZAR
D = DELETE / BORRAR
'''
import os
import mysql.connector
def limpiar_pantalla():
    if os.name == "nt":  # nt significa que limpiará la pantalla en Windows
        os.system("cls")
    else:  # Otros sistemas operativos
        os.system("clear")

servidor = "localhost"
usuario = "mi_empresa"
contraseña = "miempresa"
bases_de_datos = "libreria"

conexion = mysql.connector.connect(
    host=servidor,
    database=bases_de_datos,
    user=usuario,
    password=contraseña
)
limpiar_pantalla()
while True:
    print("\033[36mBIENVENIDO A TU PROGRAMA DE LIBRERIA ENLAZADA CON BASE DE DATOS EN PHPMYADMIN\n")
    print("       --MENU PRINCIPAL DE LA LIBRERIA--")
    print("\033[32m•1 Crea un nuevo registro para el libro.")
    print("•2 Vamos a leer los registros almacenados.")
    print("•3 Vamos a actualizar los datos de un libro.")
    print("•4 Vamos a borrar un registro de un libro.")
    print("•5 Salir del programa.")
    opcion = input("Selecciona una de las anteriores opciones del menú: ")
    print("\033[35mHas seleccionado la opción", opcion, "del menú.\033[0m")
    
    if opcion == "1":
        print("\033[36mVamos a CREAR un nuevo registro de libro.")
        autor = input("\033[35mIntroduce el autor del libro: \033[0m")
        titulo = input("\033[35mIntroduce el título del libro: \033[0m")
        año = input("\033[35mIntroduce el año de lanzamiento del libro: \033[0m")
        genero = input("\033[35mIntroduce el género del libro: \033[0m")
        # Código de conexión a PHPMYADMIN
        peticion = f"INSERT INTO `datos_del _libro` (autor, titulo, año, genero) VALUES ('{autor}', '{titulo}', '{año}', '{genero}');"
        cursor = conexion.cursor()
        cursor.execute(peticion)
        conexion.commit()
        print("\033[32mNuevo libro insertado exitosamente.\033[0m")
        
    elif opcion == "2":
        print("\033[36mVamos a LEER los registros almacenados en la base de datos.\033[0m")
        peticion = "SELECT * FROM `datos_del _libro`;"
        cursor = conexion.cursor()
        cursor.execute(peticion)
        filas = cursor.fetchall()
        for fila in filas:
            print("------------------------------------")
            print("El identificador es:", fila[0])
            print("El AUTOR del libro es:", fila[1])
            print("El TÍTULO del libro es:", fila[2])
            print("El AÑO de lanzamiento es:", fila[3])
            print("El GÉNERO del libro es:", fila[4])
        print("Listado de libros visualizado correctamente.")
        
    elif opcion == "3":
        print("\033[36mVamos a ACTUALIZAR los datos de un libro en la base de datos.\033[0m")
        identificador = input("Introduce el ID del libro a actualizar: ")
        nuevo_autor = input("Introduce el nuevo autor del libro: ")
        nuevo_titulo = input("Introduce el nuevo título del libro: ")
        nuevo_año = input("Introduce el nuevo año de lanzamiento del libro: ")
        nuevo_genero = input("Introduce el nuevo género del libro: ")
        peticion = f"UPDATE `datos_del _libro` SET autor='{nuevo_autor}', titulo='{nuevo_titulo}', año='{nuevo_año}', genero='{nuevo_genero}' WHERE identificador={identificador};"
        cursor = conexion.cursor()
        cursor.execute(peticion)
        conexion.commit()
        print("Libro actualizado exitosamente.")
        
    elif opcion == "4":
        print("\033[31mVamos a BORRAR los registros almacenados en la base de datos.\033[0m")
        identificador = input("Introduce el ID del libro a borrar: ")
        peticion = f"DELETE FROM `datos_del _libro` WHERE identificador={identificador};"
        cursor = conexion.cursor()
        cursor.execute(peticion)
        conexion.commit()
        print("Libro borrado exitosamente.")
        
    elif opcion == "5":
        print("Has elegido salir del programa.")
        conexion.close()
        break

    else:
        print("Opción no válida, por favor elige una opción del 1 al 5.")
