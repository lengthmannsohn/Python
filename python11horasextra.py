#CALCULAR SALARIO DE TRABAJADORES
#Pediremos a un usuario las horas trabajadas y los kilómetros
#El trabajador tendrá horas extra a partir de la hora 36
#Cada hora extra será 2€ más
#Solamente mostraremos mensajes
#Si el trabajador hace menos de 100 km las dietas son LOCALES
#Si el trabajador hace entre 101km y 500km las dietas son PROVINCIALES
#Si hace más km, serán NACIONALES
#Si el precio final es menor a 250€ SIN RETENCIONES
#Si es entre 251 y 600, 20% retención
#Si es mayor 40% retención

#Número horas: 40
#Horas extra: 4
# Precio hora: 20
# Salario base: 36 * 20
# Salario extra: 4 * 22
# Salario total: Salario base + salario extra

print ("Ejemplo Horas extra:")

print ("Introduce las horas trabajadas")
horasTrabajadas = int(input())
print ("Introduce el precio hora")
precioHora = int(input())
print ("Introduce los kilometros recorridos")
Kilometros = int(input())

horasExtra = 0
salarioExtra = 0
salarioBase = 0
salarioTotal = 0
dietas = ""
retencion = ""

if (horasTrabajadas > 36):
    horasExtra = horasTrabajadas - 36
    salarioBase = precioHora * 36
    salarioExtra = horasExtra * (precioHora + 2)
else:
    #NO HA HECHO HORAS EXTRA
    horasExtra = 0
    salarioExtra = 0
    salarioBase = horasTrabajadas * precioHora
salarioTotal = salarioBase + salarioExtra

if (Kilometros <=100):
    dietas = "LOCALES"
elif (Kilometros >= 101 and Kilometros <= 500):
    dietas = "PROVINCIALES"
else:
    dietas = "NACIONALES"

if (salarioTotal <= 250):
    retencion = "SIN RETENCIONES"
elif (salarioTotal >= 251 and salarioTotal <= 600):
    retencion = "20% retencion"
else:
    retencion = "40% retencion"

print ("Informe de salario")
print ("Horas trabajadas ", horasTrabajadas)
print ("Horas extra", horasExtra)
print ("Precio hora ", precioHora)
print ("Precio extra ", (precioHora + 2))
print ("Salario base ", salarioBase)
print ("Salario extra ", salarioExtra)
print ("Salario total ", salarioTotal)
print ("Dietas ", dietas)
print ("Retenciones ", retencion)

print ("Fin del programa")