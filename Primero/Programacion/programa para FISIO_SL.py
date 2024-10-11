#creamos el docstring como mensaje de bienvenida para el desarrollador
"""
PROGRAMA DE GESTION DE CLIENTES PARA FISIO S.L HECHO POR:
(c) YONATAN MORA RUIZ 2024
"""

import os#creamos la funcion de limpiar la pantalla de nuestro programa
def limpiar_pantalla():
    if os.name == "nt":#nt significa que limpiara la pantalla de cualquier os
        os.system("cls")#(windos,mac,linux)
    else:#hacemos un (if-else) para que no se repita el mismo mensaje a la hora de iniciar el programa
        os.system(limpiar_pantalla)
        limpiar_pantalla()#llamamos a la funcion de limpiar pantalla



import os#creamos la caperta donde va estar el documento txt.
try:
    nombre_carpeta = "FISIO_SL"#nueva carpeta
    os.mkdir("FISIO_S.L")#make-directoy para hacer la carpeta
except:
    print("tu carpeta ya esta creada , continuamos con el programa")
    limpiar_pantalla()#llamamos ala funcion de limpiar pantalla
# Almacenamiento en el DISCO DURO al ser un archivo de texto
archivo = open("FISIO_S.L/clientes.txt","a")#creamos el archivo txt dentro de la carpeta en "a" añadir
while(True):#creamos un bucle infinito de repeticion
    print("\033[36m**********BIENVENIDO FISIO.SL**********\n")#mensaje de bienvenida para el usuario
    print("seleciona una de las siguientes opciones que acontinuacion te presentamos:")#menu de navegacion para el usuario
    print("\033[32m•1- Introduce los datos personales del paciente: ")#opcion 1
    print("•2- leer registros guardados: ")#opcion 2
    print("•3- SALIR del programa: ")#opcion 3
#el \033[35m] es el color de la fuente en la consola siendo en este caso AZUL
    opcion = input ("seleciona una de las opciones del menu: ")
    #con opcion = input le informamos al usuario que introduzca una opcion del menu
    print("has seleciona la opcion:",opcion,"continuemos..")#mensaje de respuesta del programa
#estructura de control (if-elif-self)
    if opcion == "1":# si opcion 1 es igual a 1 entonces...
        print("\033[36mVamos a introducir los datos del paciente:")#mensaje de respuesta del programa
        archivo     = open("FISIO_S.L/clientes.txt","a")#llamamos al archivo de txt.
        nombre      = input("\033[35mnombre del paciente: nombre ->\033[0m ")#introduce datos
        apellidos   = input("\033[35mapellidos del paciente: apellidos ->\033[0m ")#introduce datos
        telefono    = input("\033[35mtelefono del paciente: telefono ->\033[0m ")#introduce datos
        email       = input("\033[35memail del paciente: email ->\033[0m ")#introduce datos
        tratamiento = input("\033[35mtratamiento al paciente: tratamiento ->\033[0m ")#introduce datos
        nota        = input("\033[35mnota al paciente: NOTA ->\033[0m ")#introduce datos
        #concatenamos los datos introducidos por el usuario en la variable llamada -contenido-
        contenido   = nombre+"\n"+apellidos+"\n"+telefono+"\n"+email+"\n"+tratamiento+"\n"+nota
        archivo.write(contenido)#ejecutamos archivo.write para que escriba el contenido de la variable - contenido-
        archivo.close()#SIEMPRE cerramos el archivo con archivo.close() y llamamos al funcion
        print("\033[32m*****Los datos del paciente se ha guardardo correctamente.*****")#mensaje de respuesta de que los datos introducidos se han guadado correctamente

    elif opcion == "2":#estructura de control (si el usuario elige la opcion 2)
        print("\033[33mVamos a LEER los registros guardados.")
        archivo     = open("FISIO_S.L/clientes.txt","r")#abrimos el archivo en modo lectura "r"
        lineas      = archivo.readlines()#creamos la variable lineas para leer las redlines en funcion()
        for linea in lineas:#estructura de control for
            print(linea)
        
        input("pulse una tecla para continuar")#mensaje del programa para el usuario
        limpiar_pantalla()#llamamos a la funcion de limpiar la pantalla para el usuario


    elif opcion == "3":#estructura de control
        limpiar_pantalla()#funcion de limpiar la pantalla
        input("pulse una tecla para continuar")#mensaje del programa para el usuario
        
    else:#estructura de control
        print("\033[35mla opcion elegida no es la correcta, prueba de nuevo.")
    #con esta estrutura de control en caso de que el usuario introduzca una funcion no valida
    #     


