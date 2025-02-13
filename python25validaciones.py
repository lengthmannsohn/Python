from libreria25validaciopnes import validarIsbn
from libreria25validaciopnes import validarDni

print("Clase Program alidaciones")
print("Introduzca un ISBN")

isbn = input()
valido = validarIsbn(isbn)
print("El isbn es ", valido)


print("Introduzca un DNI sin letra")
numeroDni = input()

letraDni = validarDni(numeroDni)

print(numeroDni + letraDni)
