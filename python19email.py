print("VALIDACION DE EMAIL")
print("Introduzca un email")
email = input()
if (email.find("@") == -1):
    print("Falta la @")
elif (email.find(".") != -1):
    print("Falta el punto")
elif (email.startswith("@") or email.endswith("@") == True):
    print("No debe empezar ni acabar en una @")
elif (email.startswith(".") or email.endswith(".") == True):
    print("No debe empezar ni acabar por un punto")
elif (email.find("@") != email.rfind("@")):
    print("Solo debe tener una @")
posArroba = email.find("@")
subtexto = email[posArroba]
elif (subtexto.find(".") != -1):
    print("No debe tener un punto despues de la @")

else:
    print("Genial!!")
