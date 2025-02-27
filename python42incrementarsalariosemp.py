import oracledb

connection = oracledb.connect (user='SYSTEM', password='oracle', dsn='localhost/xe')

print("Introduce el OFICIO:")
oficio = input()
print("Introduce el INCREMENTO del salario")
incremento = input()

sql = "UPDATE EMP SET SALARIO = SALARIO +:INCREMENTOSALARIO WHERE OFICIO=:OFICIO"

cursor = connection.cursor()
cursor.execute(sql, (incremento, oficio))
registros = cursor.rowcount
print (f"Empleados modificados: {registros}")

cursor.close()

sqlconsulta = "SELECT APELLIDO, OFICIO, SALARIO from EMP where OFICIO=:OFICIO"
cursor = connection.cursor()
cursor.execute(sqlconsulta, (oficio,))
for row in cursor:
    print(f"Apellido: {row[0]}, Oficio: {row[1]}, Departamento: {row[2]}")
cursor.close()

connection.close()

print ("Fin de programa")