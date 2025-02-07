print("Introduzca un numero")
numero1=int(input())
print("Introduzca otro")
numero2=int(input())
if (numero1 > numero2):
    print ("El número " + str(numero1) + " es mayor que " + str(numero2))
elif(numero1==numero2):
    print("Son iguales")
else:
    print("El numero mayor es ", numero2)   

