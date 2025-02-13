def validarIsbn(isbn):
   longitud = len(isbn)
   if (longitud != 10):
       return False
   elif (isbn.isdigit() == False):
       return False
   suma = 0
   for i in range (10):
        digito = isbn[i]
        suma = suma + int(digito) * (i+1)
        if (suma % 11 == 0):
            return True
        else:
            return False
        
def validarDni(dni):
    dni = int(dni)
    resultado = dni % 23
    LetraDNI = ""
    if (resultado == 0 ):
        LetraDNI = "T"
    elif (resultado == 1 ):
        LetraDNI = "R"
    elif (resultado == 2 ):
        LetraDNI = "W"
    elif (resultado == 3 ):
        LetraDNI = "A"
    elif (resultado == 4 ):
        LetraDNI = "G"
    elif (resultado == 5 ):
        LetraDNI = "M"
    elif (resultado == 6 ):
        LetraDNI = "Y"
    elif (resultado == 7 ):
        LetraDNI = "F"
    elif (resultado == 8 ):
        LetraDNI = "P"
    elif (resultado == 9 ):
        LetraDNI = "D"
    elif (resultado == 10 ):
        LetraDNI = "X"
    elif (resultado == 11 ):
        LetraDNI = "B"
    elif (resultado == 12 ):
        LetraDNI = "N"
    elif (resultado == 13 ):
        LetraDNI = "J"
    elif (resultado == 14 ):
        LetraDNI = "Z"
    elif (resultado == 15 ):
        LetraDNI = "S"
    elif (resultado == 16 ):
        LetraDNI = "Q"
    elif (resultado == 17):
        LetraDNI = "V"
    elif (resultado == 18 ):
        LetraDNI = "H"
    elif (resultado == 19 ):
        LetraDNI = "L"
    elif (resultado == 20 ):
        LetraDNI = "c"
    elif (resultado == 21 ):
        LetraDNI = "K"
    elif (resultado == 22 ):
        LetraDNI = "E"
    elif (resultado == 23 ):
        LetraDNI = "T"
    return LetraDNI