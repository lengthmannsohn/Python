print("Tabla de multiplicar")
print("Introduzca un numero")
numero = int(input())
for i in range (1,11):
    operacion = numero * i
    print (str(numero) + " * " + str(i) + " = " + str(operacion))

print("Fin del programa")