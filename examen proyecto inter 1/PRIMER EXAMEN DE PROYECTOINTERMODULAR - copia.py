import mysql.connector
from flask import Flask                                            #IMPORTO LA LIBRERIA DE FLASK
aplicacion = Flask(__name__)                                       #CREO LA VARIABLE APLICACION CON FLASK                           

@aplicacion.route('/')                                             #DEFINO LA RUTA                             
def inicio():                                                      #DEFINO LA FUNCION
    servidor       = "localhost"                                   #DATOS DE CONEXION A PHPMYADMIN                                   
    usuario        = "yonatan"                                         
    contraseña     = "yonatan"                                         
    bases_de_datos = "universidadburgos"                                        

    conexion   = mysql.connector.connect(                          #CONEXION A MYSQL                
    host       = servidor,
    database   = bases_de_datos,
    user       = usuario,
    password   = contraseña
        )  
    cursor = conexion.cursor(dictionary=True)                     #CREO UN CURSOR Y AÑADO EL DICIONARIO PARA QUE ME DEVUELVA JSON LOS DATOS
      
    peticion = "SELECT * FROM `creditos`"                         #EJECUTO LA PETICION
    cursor.execute(peticion)                                      #CREO EL CURSOR
    filas = cursor.fetchall()
    
    return filas
 
aplicacion.run(debug=True)                                                                                      
    

    