print("VALIDACION DE EMAIL")
print("Introduzca un email")
email = input()
#EMAIL CON @
if (email.find("@") == -1):
    print("Falta la @")
#QUE EXISTA UN PUNTO
elif (email.count(".") == 0):
    print("Falta el punto")
#EMAIL SIN @ AL PRINCIPIO NI AL FINAL
elif (email.startswith("@") or email.endswith("@") == True):
    print("No debe empezar ni acabar en una @")
#EMAIL SIN PUNTO NI AL INICIO NI AL FINAL
elif (email.startswith(".") or email.endswith(".") == True):
    print("No debe empezar ni acabar por un punto")
#EMAIL CON UNA SOLA @
elif (email.count("@")>1):
    print("Solo debe tener una @")
#EXISTA UN PUNTO DESPUES DE LA @
elif (email.find("@") > email.rfind(".")):
    print("Debe tener un punto despues de la @")
#MISMO EJEMPLO DE OTRA FORMA DIFERENTE (NO HE COMPROBADO SI FUNCIONA ESTE PUNTO)
elif (email.find("."), email.find("@") ==-1):
    print("Debe tener un punto despues de la @")
else:
    #NECESITAMOS RECUPERAR EL DOMINIO
    ultimoPunto = email.rfind(".")
    #RECUPERAMOS EL DOMINIO
    dominio = email[ultimoPunto + 1:]
    #LONGITUD DE DOMINIO
    longitudDominio = len(dominio)
    #COMPROBAR LA LONGITUD 2-3
    if (longitudDominio >= 2 and longitudDominio <= 3):
        print ("Email correcto " + email)
    else:
        print("El email debe tener un dominio de 2 a 3 caracteres")
print ("Fin del programa")