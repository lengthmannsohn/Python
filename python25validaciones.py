import libreria25validaciopnes

print("Programa Validaciones")
print("Introduzca un ISBN")
isbn = input()
libreria25validaciopnes.validacionIsbn(isbn)

print("Introduzca un DNI sin letra")
numeroDni = input()

letraDni = libreria25validaciopnes.validacionDni(numeroDni)

print(numeroDni + letraDni)