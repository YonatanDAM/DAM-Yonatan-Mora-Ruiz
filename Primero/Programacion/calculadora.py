#creamos el docstring como mensaje de bienvenida para el desarrollador
"""
PROGRAMA DE GESTION DE CLIENTES PARA FISIO S.L HECHO POR:
(c) YONATAN MORA RUIZ 2024
"""
import os
def limpiar_pantalla():#creamos la funcion de limpiar la pantalla de nuestro programa
    if os.name == "nt":#nt significa que limpiara la pantalla de cualquier os
        os.system("cls")#(windos,mac,linux)
    else:#hacemos un (if-else) para que no se repita el mismo mensaje a la hora de iniciar el programa
        os.system(limpiar_pantalla)
        limpiar_pantalla()#llamamos a la funcion de limpiar pantalla
limpiar_pantalla()       
while(True):#creamos un bucle infinito de repeticion
    print("\033[32m*****BIENVENIDO A TU CALCULADORA INTERACTIVA*****\n")#mensaje de bienvenida para el usuario

#creamos las variables -digito 1- -digito 2- operador

    digito1  = input("\033[36mintroduce tu primer digito:\n")
    digito2  = input("introduce tu segundo digito:\n")
    operador = input("\033[33mintroduce la operacion matematica que quieres ejecutar: +,-,*,/ :")
    digito1 = int(digito1)# convertimos la variable digito 1 a numero entero con -int-
    digito2 = int(digito2)# convertimos la variable digito 2 a numero entero con -int-
#estructura de control if
    if operador == "+":
        resultado = digito1 + digito2#creamos la variable resultado para operar con digito1 y digito2
        print("\033[35maqui tienes el resultado de la SUMA:",resultado)
        input("\033[37mpulsa una tecla para continuar....")
        limpiar_pantalla()#llamamos a la funcion de limpiar la pantalla       
#estructura de control elif
    elif operador == "-": 
        resultado = digito1 - digito2
        print("\033[35maqui tienes el resultado de la RESTA:",resultado)
        input("\033[37mpulsa una tecla para continuar....")
        limpiar_pantalla()#llamamos a la funcion de limpiar la pantalla       
#estructura de control elif
    elif operador == "*": 
        resultado = digito1 * digito2
        print("\033[35maqui tienes el resultado de la MULTIPLICACION:",resultado)
        input("\033[37mpulsa una tecla para continuar....")
        limpiar_pantalla()#llamamos a la funcion de limpiar la pantalla       
#estructura de control elif
    elif operador == "/": 
        resultado = digito1 / digito2
        print("\033[35maqui tienes el resultado de la DIVISION:",resultado) 
        input("\033[37mpulsa una tecla para continuar....")
        limpiar_pantalla()#llamamos a la funcion de limpiar la pantalla       


