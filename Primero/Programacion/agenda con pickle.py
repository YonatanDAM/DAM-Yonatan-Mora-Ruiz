# libro.py
class Libro:
    def __init__(self, nuevo_autor, nuevo_titulo, nuevo_año, nuevo_genero):
        self.autor = nuevo_autor
        self.titulo = nuevo_titulo
        self.año = nuevo_año
        self.genero = nuevo_genero

# main.py
import pickle
from libro import Libro

libreria = []

while True:
    print("*****Bienvenido a tu programa biblioteca de libros*****")
    print("            --Menu de inicio--")
    print("1• Insertar un nuevo LIBRO")
    print("2• guardar los libros")
    print("3• listar los libros insertados")
    print("4• leer los registros guardados")
    print("5• salir del programa")
    opcion = input("selecciona una de las opciones: ")
    print("has seleccionado la opción", opcion)
    
    if opcion == "1":
        print("vamos a insertar un nuevo libro.")
        autor = input("Introduce el nombre del Autor :") # Introduce datos
        titulo = input("Introduce el título del libro: ")
        año = input("Introduce el año de lanzamiento: ")
        genero = input("Introduce el género del libro: ")
        nuevo_libro = Libro(autor, titulo, año, genero) # Crear una nueva instancia de la clase Libro
        libreria.append(nuevo_libro) # Añadir el nuevo libro a la librería

    elif opcion == "2":
        print("vamos a GUARDAR los libros en archivo.")
        with open("libreria.bin", 'wb') as archivo:
            pickle.dump(libreria, archivo)
        print("El registro ha quedado guardado en un archivo.")

    elif opcion == "3":
        print("vamos a listar los libros insertados.")
        for libro in libreria: # Iterar sobre la lista de libros
            print("-------------------------------------------")
            print("Nombre del autor:", libro.autor)
            print("Título del libro:", libro.titulo)
            print("Año del libro:", libro.año)
            print("El género del libro es:", libro.genero)
            print("------------------------------------------")

    elif opcion == "4":
        print("vamos a LEER los libros en pantalla.")
        with open("libreria.bin", 'rb') as archivo:
            libreria = pickle.load(archivo)
        for libro in libreria: # Iterar sobre la lista de libros leídos
            print("-------------------------------------------")
            print("Nombre del autor:", libro.autor)
            print("Título del libro:", libro.titulo)
            print("Año del libro:", libro.año)
            print("El género del libro es:", libro.genero)
            print("------------------------------------------")

    elif opcion == "5":
        exit()
