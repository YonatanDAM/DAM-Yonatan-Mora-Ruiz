from flask import Flask 
from flask_cors import CORS
import mysql.connector                                             #IMPORTO LA LIBRERIA PARA PODER CONECTARME A LA BASE DE DATOS
aplicacion = Flask(__name__)
CORS(aplicacion)

@aplicacion.route('/')
