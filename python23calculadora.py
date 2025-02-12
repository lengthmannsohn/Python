def sumar(sumando1, sumando2):
    return sumando1 + sumando2

def restar(restando1, restando2):
    return restando1 - restando2

def multiplicar(factor1, factor2):
    return factor1 * factor2

def mostrarMenu():
    print("Seleccione una opción")
    print("1.- Sumar")
    print("2.- Restar")
    print("3.- Multiplicar")

print("Calculadora metodos")
print ("Escribe un numero")
operando1 = int(input())
print ("Escribe otro numero")
operando2 = int(input())
mostrarMenu()

opcion = int(input())
if (opcion == 1):
    resultado = sumar(operando1, operando2)
elif (opcion == 2):
    resultado = restar(operando1, operando2)
elif (opcion == 3):
    resultado = multiplicar(operando1, operando2)
else:
        print("No ha seleccionado la operacion correcta")
print("El resultado es " + str(resultado) )

print("Fin del programa")