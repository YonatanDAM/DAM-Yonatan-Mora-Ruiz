
import mysql.connector                                             #IMPORTO LA LIBRERIA PARA PODER CONECTARME A LA BASE DE DATOS


servidor       = "localhost"                                       #ELIJO LOS DATOS DE LA BASE DE DATOS DONDE ME QUIERO CONECTAR
usuario        = "yonatan"                                         #PREVIAMENTE SE HA CREADO UN USUARIO Y CONTRASEÑA EN PHPMYADMIN
contraseña     = "yonatan"                                         #PREVIAMENTE SE HA CREADO UN USUARIO Y CONTRASEÑA EN PHPMYADMIN
bases_de_datos = "creditos"                                        #NOMBRE DE LA BASE DE DATOS

conexion       = mysql.connector.connect(                          #CREO UNA CONEXION
    host       = servidor,
    database   = bases_de_datos,
    user       = usuario,
    password   = contraseña
)

while True:                                                                                    #ENTRA EN EL BUCLE DE REPETICION INFINITO
    print("BIENVENIDO A TU PROGRAMA DE CREDITOS ENLAZADA CON BASE DE DATOS EN PHPMYADMIN")     #MENU DE BIENVENIDA
    print("       --MENU PRINCIPAL --")                                                        #MENU DE OPCIONES
    print("1 Crea un nuevo registro.")
    print("2 Vamos a leer los registros almacenados.")
    print("3 Vamos a actualizar los registros.")
    print("4 Vamos a borrar un registro.")
    print("5 Salir del programa.")
    opcion = input("Selecciona una de las anteriores opciones del menú: ")                     #LE DIGO AL USUARIO QUE DEBE ELEJIR UNA OPCION
    print("Has seleccionado la opción", opcion, "del menú.")                                   #MENSAJE DE RESPUESTA
    
    if opcion == "1":                                                                          #ESTRUCTURA DE CONTROL
        print("Vamos a CREAR un nuevo registro.")
        cargo = input("Introduce el NUEVO cargo:")                                             #INTRODUCIR NUEVOS DATOS EN LA BASE DE DATOS
        nombre = input("Introduce el NUEVO nombre:")
        peticion = f"INSERT INTO `equipo` (cargo, nombre) VALUES ('{cargo}', '{nombre}');"     #CREO UNA PETICION PARA MYSQL CON LA VARIABLE PETICION PARA INSERTAR NUEVOS DATOS

        cursor = conexion.cursor()                                                             #CREO UN CURSOR
        cursor.execute(peticion)                                                               #EJECUTO LA PETICION
        conexion.commit()                                                                      #HAGO UN COMIT
        print("Nuevo REGISTRO insertado exitosamente.")                                        #MENSAJE PARA EL USUARIO
        
    elif opcion == "2":
        print("Vamos a LEER los registros almacenados en la base de datos.")
        peticion = "SELECT * FROM `equipo`;"                                                   #PETICION PARA LEER LOS DATOS DE LA BASE DE DATOS

        cursor = conexion.cursor()
        cursor.execute(peticion)
        filas = cursor.fetchall()
        for fila in filas:                                                                     #MUESTRA LA INFORMACION
            print("------------------------------------")
            print("El ID es:",     fila[0])
            print("El CARGO es:",  fila[1])
            print("El NOMBRE es:", fila[2])
        print("Listado de libros visualizado correctamente.")
        
    elif opcion == "3":
        print("Vamos a ACTUALIZAR los REGISTROS  en la base de datos.")
        identificador = input("Introduce el ID de la base de datos: ")
        nuevo_cargo   = input("Introduce el nuevo cargo: ")
        nuevo_nombre  = input("Introduce el nuevo nombre: ")
        
        peticion = f"UPDATE `equipo` SET cargo='{nuevo_cargo}', nombre='{nuevo_nombre}' WHERE identificador={identificador};"#PETICION PARA ACTUALIZAR LOS DATOS DE LA BASE DE DATOS 

        cursor = conexion.cursor()
        cursor.execute(peticion)
        conexion.commit()
        print("REGISTRO actualizado exitosamente.")                                           #MENSAJE PARA EL USUARIO
        
    elif opcion == "4":
        print("Vamos a BORRAR los registros almacenados en la base de datos")
        identificador = input("Introduce el ID  a borrar: ")

        peticion = f"DELETE FROM `equipo` WHERE identificador={identificador};"              #PETICION PARA ELIMINAR DATOS EN MYSQL

        cursor = conexion.cursor()
        cursor.execute(peticion)
        conexion.commit()
        print("registro borrado exitosamente.")
        
    elif opcion == "5":                                                                      #SALIR DEL PROGRAMA
        print("Has elegido salir del programa.")
        conexion.close()
        break

    
