"""
PROGRAMA DE GESTION DE CLIENTES POR AGENDA HECHO POR:
(c) YONATAN MORA RUIZ 2024
"""
# almacenamiento en la memoria RAM temporal

import os
def limpiar_pantalla():
    if os.name == "nt":
        os.system("cls")
    else:
        os.system(limpiar_pantalla)   
        limpiar_pantalla() 


agenda = []

while(True):
        limpiar_pantalla() 
        
        print("\033[36m*****PROGRAMA AGENDA (C) YONATAN MORA RUIZ*****\n\033[0m")
        
        print("\033[37mBienvenido a tu gestor de clientes, seleciona una de las siguiente opciones :\033[0m")
        print("\033[32m1. Insertar un nuevo cliente.\033[0m")
        print("\033[32m2. Listar clientes en memoria.\033[0m")
        print("\033[31m3. Salir del programa\033[0m")
        opcion = input("introduce la opcion elegida: \033[0m")
        print("\033[35mhas selecionado la opcion\033[0m",opcion)

        if opcion == "1":
            print("\033[32mVamos a insertar un nuevo cliente.")
            nombre    =input("\033[33mIntroduce el nombre\033[0m              --> •nombre : ")
            apellidos =input("\033[33mIntroduce el apellidos\033[0m           --> •apellidos : ")
            email     =input("\033[33mIntroduce el email\033[0m               --> •email : ")
            telefono  =input("\033[33mIntroduce el telefono de contacto\033[0m--> •telefono : ")
            agenda.append([nombre,apellidos,email,telefono])# donde agenda [] guardara en la memoria ram los datos guardados anteriormente
            # agenda.append( [  +,+,+,+,  ]  ) formula
            print("\033[32mtus registros han quedado guardados satisfactoriamente..\033[0m")

        elif opcion =="2":
            print("\033[32mVamos a listar los clientes en memoria.\033[0m")
            for registro in agenda:
                print("|-------------------------------------|")
                print("\033[34m•nombre:\033[0m"       ,registro [0])
                print("\033[34m•apellidos:\033[0m"    ,registro [1])
                print("\033[34m•email:\033[0m"        ,registro [2])
                print("\033[34m•telefono:\033[0m"     ,registro [3])
        elif opcion =="3":
             limpiar_pantalla()
             print("\033[32m••••Has salido del programa..!!!Hasta pronto¡¡¡••••\033[0m")
                 

        input("\033[31mpulse una tecla para continuar...\033[0m\n")
        limpiar_pantalla()