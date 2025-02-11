print("Suma numeros texto string")
print("Introduzca un texto numérico")
textoNumeros = input()
longitud = len(textoNumeros)
resultado = 0
for i in range(longitud):
    #RECORREMOS CADA CARACTER DEL TEXTO
    caracter = textoNumeros[i]
    #CONVERTIMOS CADA CARACTER A ENTERO
    resultado = resultado + int(caracter)
    print (caracter)

print("El resultado es: " +  str(resultado))
print("Fin de programa")