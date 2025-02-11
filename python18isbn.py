print("VALIDANDO ISBN")

print("Introduzca numero ISBN de 10 digitos")
isbn = input()
longitud = len(isbn)
if (longitud != 10):
    print("El numero ISBN debe tener 10 digitos")
elif (isbn.isdigit() == False):
    print("El ISBN debe contener solo números")
else:
    suma = 0
    for i in range (10):
        digito = isbn[i]
        suma = suma + int(digito) * (i+1)
    if (suma % 11 == 0):
        print("El ISBN es correcto")
    else:
        print("El ISBN es incorrecto")

print("Fin de programa")