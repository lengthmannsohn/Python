def sumar(num1, num2):
    return num1 + num2

def restar(num1, num2):
    return num1 - num2

def multiplicar(num1, num2):
    return num1 * num2

def getNumeroComprobado():
    print ("Escribe un numero")
    num = input()
    while (num.isdigit() == False):
        print ("Esto no es un nomero, escribe un numero")
        num = input()
    num = int(num)
    return (num)


def mostrarMenu():
    print("Seleccione una opción")
    print("0.- Salir")
    print("1.- Sumar")
    print("2.- Restar")
    print("3.- Multiplicar")
    print("4.- Volver a introducir numeros")

print("Calculadora metodos")

num1 = getNumeroComprobado()
num2 = getNumeroComprobado()

# ASIGNAMOS UN VALOR A OPCION PARA ENTRAR EN EL BUCLE
# CREAMOS UN WHILE HASTA QUE EL USUARIO ESCRIBA 0

opcion = 1

while (opcion != 0):
    mostrarMenu()
    opcion = int(input())
    if (opcion == 0):
        print("Hasta luego")
    elif (opcion == 1):
        resultado = sumar(num1, num2)
        print("El resultado es " + str(resultado) )
    elif (opcion == 2):
        resultado = restar(num1, num2)
        print("El resultado es " + str(resultado) )
    elif (opcion == 3):
        resultado = multiplicar(num1, num2)
        print("El resultado es " + str(resultado) )
    elif (opcion == 4):
        # DEBEMOS PEDIR NUMEROS DE NUEVO
        num1 = getNumeroComprobado()
        num2 = getNumeroComprobado()
    else:
            print("No ha seleccionado la operacion correcta")

print("Fin del programa")