<<<<<<< HEAD
DROP TABLE DEPT;
DROP TABLE EMP;
DROP TABLE HOSPITAL;
DROP TABLE SALA;
DROP TABLE DOCTOR;
DROP TABLE PLANTILLA;
DROP TABLE ENFERMO;
DROP TABLE OCUPACION;

CREATE TABLE DEPT
  (DEPT_NO NUMBER(9)
  ,DNOMBRE VARCHAR2(50)
  ,LOC VARCHAR2(50)
);

CREATE TABLE EMP
  (EMP_NO NUMBER(9)
  ,APELLIDO VARCHAR2(50)
  ,OFICIO VARCHAR2(50)
  ,DIR NUMBER(9)
  ,FECHA_ALT DATE
  ,SALARIO NUMBER(9)
  ,COMISION NUMBER(9)
  ,DEPT_NO NUMBER(9)
);

CREATE TABLE HOSPITAL(
  HOSPITAL_COD NUMBER(9)
  ,NOMBRE VARCHAR2(50)
  ,DIRECCION VARCHAR2(100),
  TELEFONO VARCHAR2(9),
  NUM_CAMA NUMBER(9)
);

CREATE TABLE SALA(
  HOSPITAL_COD NUMBER(9)
  ,SALA_COD NUMBER(9)
  ,NOMBRE VARCHAR2(60)
  ,NUM_CAMA NUMBER(9)
);

CREATE TABLE DOCTOR(
  HOSPITAL_COD NUMBER(9)
  ,DOCTOR_NO NUMBER(9)
  ,APELLIDO VARCHAR2(60)
  ,ESPECIALIDAD VARCHAR2(60),
  SALARIO NUMBER(9)
);

CREATE TABLE PLANTILLA(
  HOSPITAL_COD NUMBER(9)
  ,SALA_COD NUMBER(9)
  ,EMPLEADO_NO NUMBER(9)
  ,APELLIDO VARCHAR2(60)
  ,FUNCION VARCHAR2(60)
  ,TURNO VARCHAR2(1)
  ,SALARIO NUMBER(9)
);

CREATE TABLE ENFERMO(
  INSCRIPCION NUMBER(9)
  ,APELLIDO VARCHAR2(60)
  ,DIRECCION VARCHAR2(100)
  ,FECHA_NAC DATE
  ,SEXO VARCHAR2(1)
  ,NSS NUMBER(9)
);

CREATE TABLE OCUPACION(
  INSCRIPCION NUMBER(9)
  ,HOSPITAL_COD NUMBER(9)
  ,SALA_COD NUMBER(9)
  ,CAMA NUMBER(9)
);

ALTER TABLE EMP
ADD CONSTRAINT PK_EMP
PRIMARY KEY (EMP_NO);

ALTER TABLE DEPT
ADD CONSTRAINT PK_DEPT
PRIMARY KEY (DEPT_NO);

ALTER TABLE HOSPITAL
ADD CONSTRAINT PK_HOSPITAL
PRIMARY KEY (HOSPITAL_COD);

ALTER TABLE DOCTOR
ADD CONSTRAINT PK_DOCTOR
PRIMARY KEY (DOCTOR_NO);

ALTER TABLE PLANTILLA
ADD CONSTRAINT PK_PLANTILLA
PRIMARY KEY (EMPLEADO_NO);

ALTER TABLE ENFERMO
ADD CONSTRAINT PK_ENFERMO
PRIMARY KEY (INSCRIPCION);

insert into hospital values(19,'provincial','o donell 50','964-4264',502);
insert into hospital values(18,'general','Atocha s/n','595-3111',987);
insert into hospital values(22,'la paz','castellana 1000','923-5411',412);
insert into hospital values(45,'san carlos','ciudad universitaria','597-1500',845);
insert into hospital values(17,'ruber','juan bravo 49','914027100',217);
/
insert into sala values(19,3,'cuidados intensivos',21);
insert into sala values(19,6,'psiquiatria',67);
insert into sala values(18,3,'cuidados intensivos',10);
insert into sala values(18,4,'cardiologia',53);
insert into sala values(22,1,'recuperacion',10);
insert into sala values(22,6,'psiquiatria',118);
insert into sala values(22,2,'maternidad',34);
insert into sala values(45,4,'cardiologia',55);
insert into sala values(45,1,'recuperacion',17);
insert into sala values(45,2,'maternidad',24);
insert into sala values(17,2,'maternidad',19);
insert into sala values(17,6,'psiquiatria',20);
insert into sala values(17,3,'cuidados intensivos',21);
/
insert into plantilla values(19,6,3754,'diaz b.','ENFERMERO','T',226200);
insert into plantilla values(19,6,3106,'hernandez j.','ENFERMERO','T',275500);
insert into plantilla values(18,4,6357,'karplus w.','INTERINO','T',337900);
insert into plantilla values(22,6,1009,'higueras d.','ENFERMERA','T',200500);
insert into plantilla values(22,6,8422,'bocina g.','ENFERMERO','M',163800);
insert into plantilla values(22,2,9901,'nuñez c.','INTERINO','M',221000);
insert into plantilla values(22,1,6065,'rivera g.','ENFERMERA','N',162600);
insert into plantilla values(22,1,7379,'carlos r.','ENFERMERA','T',211900);
insert into plantilla values(45,4,1280,'amigo r.','INTERINO','N',221000);
insert into plantilla values(45,1,8526,'frank h.','ENFERMERO','T',252200);
insert into plantilla values(17,2,8519,'chuko c.','ENFERMERO','T',252200);
insert into plantilla values(17,6,8520,'palomo c.','INTERINO','M',219210);
insert into plantilla values(17,6,8521,'cortes v.','ENFERMERA','N',221200);

/
insert into doctor values(19,435,'Lopez A.','Cardiologia',350000);
insert into doctor values(18,585,'Miller G.','Ginecologia',250000);
insert into doctor values(18,982,'Cajal R','Cardiologia',290000);
insert into doctor values(22,453,'Galo C.','Pediatria',250000);
insert into doctor values(22,398,'Best K.','Urologia',150000);
insert into doctor values(22,386,'Cabeza D.','Psiquiatria',125000);
insert into doctor values(45,607,'Niqo P.','Pediatria',240000);
insert into doctor values(45,522,'Adams C.','Neurologia',450000);
insert into doctor values(17,521,'Nino P.','Neurologia',390000);
insert into doctor values(17,120,'Curro F.','Urologia',250000);
/
INSERT INTO ENFERMO VALUES(10995, 'Languia M.', 'Goya 20', TO_DATE('16-05-1956', 'DD-MM-YYYY'), 'M', 280862482);
INSERT INTO ENFERMO VALUES(18004, 'Serrano V.', 'Alcala 12', TO_DATE('21-05-1960', 'DD-MM-YYYY'), 'F', 284991452);
INSERT INTO ENFERMO VALUES(14024, 'Fernandez N.', 'Recoletos 5', TO_DATE('23-07-1967', 'DD-MM-YYYY'), 'F', 321790059);
INSERT INTO ENFERMO VALUES(36658, 'Domin S.', 'Mayor 71', TO_DATE('01-01-1942', 'DD-MM-YYYY'), 'M', 160657471);
INSERT INTO ENFERMO VALUES(38702, 'Neal R.', 'Orense 21', TO_DATE('18-07-1940', 'DD-MM-YYYY'), 'F', 380010217);
INSERT INTO ENFERMO VALUES(39217, 'Cervantes M.', 'Perón 38', TO_DATE('29-02-1952', 'DD-MM-YYYY'), 'M', 440294390);
INSERT INTO ENFERMO VALUES(59076, 'Miller G.', 'Lopez de Hoyos 2', TO_DATE('16-09-1945', 'DD-MM-YYYY'), 'F', 311969044);
INSERT INTO ENFERMO VALUES(63827, 'Ruiz P.', 'Esquerdo 103', TO_DATE('26-12-1980', 'DD-MM-YYYY'), 'M', 200973253);
INSERT INTO ENFERMO VALUES(64882, 'Fraser A.', 'Soto 3', TO_DATE('10-07-1980', 'DD-MM-YYYY'), 'F', 285201776);
INSERT INTO ENFERMO VALUES(74835, 'Benitez E.', 'Argentina 5', TO_DATE('05-10-1956', 'DD-MM-YYYY'), 'M', 154811767);
/
INSERT INTO OCUPACION VALUES(10995,19,6,1);
INSERT INTO OCUPACION VALUES(18004,19,3,2);
INSERT INTO OCUPACION VALUES(14024,19,6,3);
INSERT INTO OCUPACION VALUES(36658,18,4,1);
INSERT INTO OCUPACION VALUES(38702,18,4,2);
INSERT INTO OCUPACION VALUES(39217,22,1,1);
INSERT INTO OCUPACION VALUES(59076,22,6,2);
INSERT INTO OCUPACION VALUES(63827,22,6,3);
INSERT INTO OCUPACION VALUES(64882,22,2,1);
/
insert into dept values(10,'CONTABILIDAD','SEVILLA');
insert into dept values(20,'INVESTIGACIÓN','MADRID');
insert into dept values(30,'VENTAS','BARCELONA');
insert into dept values(40,'PRODUCCIÓN','GRANADA');
/
INSERT INTO emp VALUES('7839', 'rey', 'PRESIDENTE', NULL, TO_DATE('17-11-1995', 'DD-MM-YYYY'), 650000, NULL, 10);
INSERT INTO emp VALUES('7698', 'negro', 'DIRECTOR', 7839, TO_DATE('01-05-1995', 'DD-MM-YYYY'), 370500, 0, 30);
INSERT INTO emp VALUES('7566', 'jimenez', 'DIRECTOR', 7839, TO_DATE('02-04-1995', 'DD-MM-YYYY'), 386750, 0, 20);
INSERT INTO emp VALUES('7782', 'cerezo', 'DIRECTOR', 7839, TO_DATE('09-06-1995', 'DD-MM-YYYY'), 318500, 0, 10);
INSERT INTO emp VALUES('7499', 'arroyo', 'VENDEDOR', 7698, TO_DATE('20-02-1994', 'DD-MM-YYYY'), 208000, 39000, 30);
INSERT INTO emp VALUES('7521', 'sala', 'VENDEDOR', 7698, TO_DATE('22-02-1995', 'DD-MM-YYYY'), 162500, 65000, 30);
INSERT INTO emp VALUES('7654', 'martin', 'VENDEDOR', 7698, TO_DATE('29-07-1995', 'DD-MM-YYYY'), 162500, 182000, 30);
INSERT INTO emp VALUES('7844', 'tovar', 'VENDEDOR', 7698, TO_DATE('08-07-1995', 'DD-MM-YYYY'), 195000, 0, 30);
INSERT INTO emp VALUES('7900', 'jimeno', 'EMPLEADO', 7698, TO_DATE('03-12-1995', 'DD-MM-YYYY'), 123500, 0, 30);
INSERT INTO emp VALUES('7902', 'fernandez', 'ANALISTA', 7566, TO_DATE('03-12-1995', 'DD-MM-YYYY'), 390000, 0, 20);
INSERT INTO emp VALUES('7788', 'gil', 'ANALISTA', 7566, TO_DATE('09-11-1995', 'DD-MM-YYYY'), 390000, 0, 20);
INSERT INTO emp VALUES('7369', 'sanchez', 'EMPLEADO', 7902, TO_DATE('17-12-1994', 'DD-MM-YYYY'), 104000, 0, 20);
INSERT INTO emp VALUES('7876', 'alonso', 'EMPLEADO', 7788, TO_DATE('23-07-1995', 'DD-MM-YYYY'), 143000, 0, 20);
INSERT INTO emp VALUES('7934', 'muñoz', 'EMPLEADO', 7782, TO_DATE('23-01-1996', 'DD-MM-YYYY'), 169000, 0, 10);
INSERT INTO emp VALUES('7919', 'serra', 'DIRECTOR', 7839, TO_DATE('11-12-1997', 'DD-MM-YYYY'), 395000, 0, 20);
INSERT INTO emp VALUES('7907', 'campayo', 'ANALISTA', 7919, TO_DATE('04-06-1994', 'DD-MM-YYYY'), 251000, 25000, 20);
INSERT INTO emp VALUES('7917', 'nino', 'VENDEDOR', 7919, TO_DATE('06-02-1995', 'DD-MM-YYYY'), 171000, 0, 20);
INSERT INTO emp VALUES('7904', 'ford', 'EMPLEADO', 7907, TO_DATE('04-04-1996', 'DD-MM-YYYY'), 162500, 0, 20);
INSERT INTO emp VALUES('7914', 'gutierrez', 'ANALISTA', 7919, TO_DATE('20-10-1986', 'DD-MM-YYYY'), 258500, 50000, 20);
commit;
=======
-- COMENTARIOS
/*
    varias lineas
    PODEMOS TENER TODAS LAS CONSULTAS QUE DESEEMOS
    NO ES NECESARIO BORRARLAS
    EN EL EDITOR, INDICAREMOS QUE CONSULTA (LINEA O SELECCION)
    QUEREMOS EJECUTAR
    PARA EJECUTAR CONTROL + ENTER (MAC)
    NO DIFERENCIA MAYUSCULAS DE MINUSCULAS EN LAS CONSULTAS
    LAS CONSULTAS FINALIZAN CON ;
*/
select * from DEPT;
select DEPT_NO, DNOMBRE, LOC from DEPT;
--ORDENAR REGISTROS order by COLUMNA
select * from EMP order by APELLIDO desc;
--FILTRADO DE REGISTROS
--PARA FILTRAR UTILIZAMOS UNA PALABRA LLAMADA where
/*
OPERADORES DE COMPARACION
> MAYOR
>= MAYOR O IGUAL
< MENOR
<= MENOR O IGUAL
= IGUAL
<> DISTINTO
TODO LO QUE NO SEA UN NUMERO SE ESCRIBE ENTRE COMILLAS SIMPLES
PARA LA COMPARACION
ORACLE DIFERENCIA MAYUSCULAS DE MINUSCULAS EN LOS STRING
*/
select * from EMP where DEPT_NO=10;
--Mostrar todos los empleados cuyo oficio sea DIRECTOR
select * from EMP where OFICIO='DIRECTOR';
select * from EMP where OFICIO='director';
/*
OPERADORES RELACIONALES
PERMITEN PREGUNTAR POR MAS DE UN FILTRO EN UNA MISMA CONSULTA
and TODAS LAS CONDICIONES DEBEN CUMPLIRSE
or MUESTRA DATOS DE CADA CONDICION
not PROHIBIDO, NO LO DEBEMOS UTILIZAR, NIEGA UNA CONDICION
*/
--Mostrar todos los empleados del departamento 10 y del departamento 20
select * from EMP where DEPT_NO=10 or DEPT_NO=20;
--Mostrar todos los emppleados cuyo EMP_NO este entre 7800 y 7900
select * from EMP where EMP_NO >= 7800 and EMP_NO <= 7900;
--Mostrar todos los empleados que NO sean vendedores
select * from EMP where not OFICIO='VENDEDOR';
select * from EMP where OFICIO <> 'VENDEDOR';
--EXISTEN OTROS TIPOS DE OPERADORES PARA FILTRAR
--OPERADOR BETWEEEN: BUSCA ENTRE UN RANGO Y DEVUELVE LOS VALORES
--INCLUSIVE DEL RANGO
--Mostrar los empleados cuyo salario esté entre 318000 y 390000
select * from EMP where SALARIO between 318000 and 390000;
select * from EMP where SALARIO >= 318000 and SALARIO <=390000;
--OPERADOR IN
--BUSCA ENTRE UN MISMO CAMPO MULTIPLES VALORES DE IGUALDAD
--Mostrar todos los empleados del departamento 10 y 20, 30, 55, 66, 88
--CAMPO IN (VALOR1, VALOR2, VALOR3)
select * from EMP where DEPT_NO=10 or DEPT_NO=20 or DEPT_NO=30
or DEPT_NO=55 or DEPT_NO=66 or DEPT_NO=88;
select * from EMP where DEPT_NO in (10,20,30,55,66,88);
--OPERADOR NOT IN
--Muestra los contrarios al operador IN
--Mostrar todos los empleados que no estén en el departamento 10 ni en el 20
select * from EMP where DEPT_NO NOT in (10,20);
--OPERADOR LIKE
--SE UTILIZA PARA BUSCAR COINCIDENCIAS EN TEXTOS (STRING, VARCHAR)
--BUSCADORES
--UTILIZA UNA SERIE DE CARACTERES ESPECIALES (SOLO SIRVE UNO)
-- ? Busca un digito en el texto
-- _ Representa un caracter cualquiera
-- % Busca cualquier carater y cualquier longitud
--Mostrar todos los empleados cuyo apellido comience con S
select * from EMP where apellido like 's%';
select * from EMP where apellido like 's%a';
--Mostrar todos los empleados cuyo apellido sea de 4 letras
select * from EMP where apellido like '____';
--CLAUSULA DISTINCT
--Nos permite quitar repetidos de una consulta SELECT
--En realidad, se utiliza con pocos campos.
--Mostrar los oficios de los empleados
select distinct OFICIO from EMP;
--CAMPOS CALCULADOS
--Un campo calculado es una columna que NO existe en una tabla
--pero que se genera a partir de otra columna/s
--OPERADORES MATEMATICOS: +, *, /, -
--TODO CAMPO CALCULADO DEBE TENER UN ALIAS SIEMPRE
--LOS ALIAS SIN ESPACION¡
--Mostrar el apellido y el salario Total (salario + comision) de todos los empleados.
select APELLIDO, (SALARIO + COMISION) as TOTAL from EMP;
--LOS CAMPOS CALCULADOS NO SE PUEDEN FILTRAR CON where
--UN where SOLAMENTE SE UTILIZA PARA FILTRAR LOS DADOS DE LA TABLA
--SI DESEAMOS FILTRAR SOBRE UN CAMPO CALCULADO, DEBEMOS HACERLO
--CON EL MISMO CALCULO
select APELLIDO, (SALARIO + COMISION) as TOTAL from EMP
where (SALARIO + COMISION) >= 210000;
--UN order by SE EJECUTA SOBRE EL CURSOR
select APELLIDO, (SALARIO + COMISION) as TOTAL from EMP order by TOTAL asc;


-- PRACTICA CONSULTAS

-- 1.
select * from EMP;

-- 2.
select APELLIDO, OFICIO, SALARIO * 14 as ANUAL from EMP where COMISION > 100000;

-- 3.
select APELLIDO, OFICIO, SALARIO * 14 as ANUAL from EMP where SALARIO * 14 + COMISION > 750000;

-- 4.


-- CONSULTAS DE AGRUPACION

--Contar el número de registros en la tabla EMP
select COUNT(*) as REGISTROS from EMP;
--Contar el número de registros en la tabla EMP
select COUNT(*) as REGISTROS, MAX(SALARIO) as MAXIMO from EMP;
--Mostrar el número de personas por cada oficio
select COUNT(*) as PERSONAS, OFICIO from EMP group by OFICIO;
select COUNT(*) as REGISTROS, MAX(SALARIO) as MAXIMO from EMP;
--Mostrar el número de personas por cada oficio y departamento
select COUNT(*) as PERSONAS, OFICIO, DEPT_NO from EMP group by OFICIO, DEPT_NO;
--Mostrar el número de personas por cada oficio
--pero solamente DIRECTOR Y ANALISTA
select COUNT(*) as PERSONAS, OFICIO from EMP where OFICIO in ('DIRECTOR', 'ANALISTA') group by OFICIO;
--Mostrar el número de personas por cada oficio
--pero solamente del departamento (10, 20)
select COUNT(*) as PERSONAS, OFICIO from EMP
where DEPT_NO in (10,20) group by OFICIO;

--Mostrar el número de personas por cada oficio
--pero solamente los oficios donde tengamos mas de una personas trabajando.
select COUNT(*) as PERSONAS, OFICIO from EMP
group by OFICIO having COUNT(*) > 1;


-- PRACTICA 2. CONSULTAS DE AGRUPACION

-- 1. Encontrar el salario medio de los analistas, mostrando el número de los empleados con oficio analista.

 select AVG(SALARIO), OFICIO from EMP where OFICIO = 'ANALISTA' group by OFICIO;
 
 -- 2. Encontrar el salario más alto, mas bajo y la diferencia entre ambos de todos los empleados con oficio EMPLEADO.

select MAX(SALARIO) as SALARIO_MAX, MIN(SALARIO) as SALARIO_MIN, MAX(SALARIO) - MIN(SALARIO) as DIFERENCIA from EMP group by OFICIO having OFICIO = 'EMPLEADO';
         
-- 3. Visualizar los salarios mayores para cada oficio.

select OFICIO, MAX(SALARIO) as SALARIOMAXIMO from EMP group by OFICIO;

-- 4. Visualizar el número de personas que realizan cada oficio en cada departamento.






-- 10. Calcular el salario medio de la plantilla de la sala 6, según la función que realizan. Indicar la función y el número de empleados.

select AVG (SALARIO) as MEDIASALARIAL
, COUNT(*) as PERSONAS, FUNCION
from PLANTILLA
where SALA_COD=6
group by FUNCION;

-- 12. Mostrar el número de hombres y el número de mujeres que hay entre los enfermos.

select COUNT(*) as PERSONAS
, SEXO from ENFERMO
group by SEXO;

-- 13. Mostrar la suma total del salario que cobran los empleados de la plantilla para cada función y turno.

select SUM(SALARIO) as SUMASALARIAL
, FUNCION, TURNO
from PLANTILLA
group by FUNCION, TURNO;



-- TABLAS COMBINADAS

-- Mostrar el Apellido, Oficio de los empleados junto a
-- su nombre de departamento y localidad.

select EMP.APELLIDO, EMP.OFICIO
, DEPT.DNOMBRE, DEPT.LOC
from EMP
cross join DEPT;
--on EMP.DEPT_NO=DEPT.DEPT_NO;

select * from EMP;
select * from DEPT;


--Mostrar el Apellido, Oficio, nombre de departamento y localidad
--de los empleados de SEVILLA
select EMP.APELLIDO, EMP.OFICIO
, DEPT.DNOMBRE, DEPT.LOC
from EMP
inner join DEPT
on EMP.DEPT_NO=DEPT.DEPT_NO
where DEPT.LOC='SEVILLA';

--Por supuesto, podemos combinar esto junto a funciones de agrupación
--Queremos mostrar el número de personas por cada número de departamento.

select count(*) as PERSONAS, DEPT_NO
from EMP
group by DEPT_NO;
--Queremos mostrar el número de personas por cada NOMBRE de departamento
select COUNT(*) as PERSONAS, DEPT.DNOMBRE
from EMP
inner join DEPT
on EMP.DEPT_NO=DEPT.DEPT_NO
group by DEPT.DNOMBRE;

--Mostrar el Apellido, función y NOMBRE DE HOSPITAL
--de las personas de la plantilla
--ABRIR LA ESTRUCTURA DE LAS TABLAS Y MIRAR CON QUE SE RELACIONA PLANTILLA
--HACER LA CONSULTA

select PLANTILLA.APELLIDO, PLANTILLA.FUNCION
, HOSPITAL.NOMBRE from PLANTILLA
inner join HOSPITAL
on PLANTILLA.HOSPITAL_COD=HOSPITAL.HOSPITAL_COD;

select *from DEPT;
select distinct DEPT_NO from EMP;

--Ejercicio:
--Quiero visualizar el Apellido, Salario y Especialidad junto a la dirección del hospital donde trabaja de todos los doctores de La paz.


select DOCTOR.APELLIDO, DOCTOR.ESPECIALIDAD, DOCTOR.SALARIO, HOSPITAL.DIRECCION from DOCTOR
inner join HOSPITAL
on DOCTOR.HOSPITAL_COD=HOSPITAL.HOSPITAL_COD
where HOSPITAL.NOMBRE='la paz';

--Quiero visualizar cuantos empleados trabajan en cada Departamento mostrando el nombre del Departamento.
--40 - GRANADA 0 EMPLEADOS


select count(EMP.EMP_NO) as EMPLEADOS
, DEPT.DNOMBRE
from EMP
right join DEPT
on DEPT.DEPT_NO=EMP.DEPT_NO
group by DEPT.DNOMBRE;

select * from HOSPITAL;
select * from PLANTILLA;
select * from SALA;

--Realizar una consulta en la que mostraremos el Apellido, Función
--Nombre del hospital donde trabaja y nombre de la sala de los
--empleados de la Plantilla
select PLANTILLA.APELLIDO, PLANTILLA.FUNCION
, HOSPITAL.NOMBRE as HOSPITAL, SALA.NOMBRE as SALA
from PLANTILLA
inner join HOSPITAL
on PLANTILLA.HOSPITAL_COD=HOSPITAL.HOSPITAL_COD
inner join SALA
on SALA.HOSPITAL_COD=HOSPITAL.HOSPITAL_COD
and SALA.SALA_COD=PLANTILLA.SALA_COD;



--1) Consulta para saber el MAXIMO salario de los EMPLEADOS
select max(SALARIO) as "MAXIMO" from EMP;
--650000
--2) Mostrar los datos del Empleado que más cobra de la Empresa
select * from EMP where SALARIO=(select max(SALARIO) as "MAXIMO" from EMP);



--No importa la anidacion de subconsultas, podemos
--escribir varios anidamientos
--Mostrar todos los empleados que tengan el mismo oficio que SALA
--y que tengan más salario que el empleado FORD
--Oficio de Sala: VENDEDOR
--Salario de FORD: 162500
select * from EMP where OFICIO='VENDEDOR' and SALARIO > 162500;
select * from EMP where OFICIO=(select OFICIO from EMP where APELLIDO='sala')
and SALARIO > (select SALARIO from EMP where APELLIDO='ford');

--o que tengan el mismo oficio que JIMENEZ
--En este ejemplo se usa el operador in para subconsultas en las cuales devuelven mas de un valor
select * from EMP where OFICIO in(select OFICIO from EMP where APELLIDO='sala' or APELLIDO = 'jimenez');


--CONSULTAS UNION / SELECT TO SELECT

select * from
(select APELLIDO, OFICIO, SALARIO as SUELDO from EMP
union
select APELLIDO, ESPECIALIDAD, SALARIO from DOCTOR
union
select APELLIDO, FUNCION, SALARIO from PLANTILLA) CONSULTA
where CONSULTA.SUELDO >= 250000
order by OFICIO;


select APELLIDO, OFICIO, SALARIO from EMP
union all
select APELLIDO, OFICIO, SALARIO from EMP;




select APELLIDO || FUNCION
, case TURNO
    when 'T' then 'TARDE'
    when 'M' then 'MAÑANA'
    else 'NOCHE'
end as TURNO
from PLANTILLA;




--05 - EJERCICIOS DE CONSULTAS DE COMBINACION (CARPETA ORACLE EN EL GITHUB DE serraguti


--1. Seleccionar el apellido, oficio, salario, numero de departamento y su nombre de todos los empleados cuyo salario sea mayor de 300000

select APELLIDO, OFICIO, SALARIO, DEPT_NO, EMP_NO from EMP
where SALARIO >300000;

--2. Mostrar todos los nombres de Hospital con sus nombres de salas correspondientes.

select HOSPITAL.NOMBRE, SALA.NOMBRE from HOSPITAL
inner join SALA
on HOSPITAL.HOSPITAL_COD=SALA.HOSPITAL_COD;

--3. Calcular cuántos trabajadores de la empresa hay en cada ciudad.

select count(*), DEPT.LOC from EMP
inner join DEPT
on EMP.DEPT_NO=DEPT.DEPT_NO
group by DEPT.LOC;

--4. Visualizar cuantas personas realizan cada oficio en cada departamento mostrando el nombre del departamento.

select DEPT.DNOMBRE, count(*) as PERSONAS, EMP.OFICIO from EMP
inner join DEPT
on DEPT.DEPT_NO=EMP.DEPT_NO
group by EMP.OFICIO, DEPT.DNOMBRE;

--5. Contar cuantas salas hay en cada hospital, mostrando el nombre de las salas y el nombre del hospital.

select count(*) as NUMEROSALAS, SALA.NOMBRE, HOSPITAL.NOMBRE from SALA
inner join HOSPITAL
on SALA.HOSPITAL_COD=HOSPITAL.HOSPITAL_COD
group by SALA.NOMBRE, HOSPITAL.NOMBRE;

--6. Queremos saber cuántos trabajadores se dieron de alta entre el año 1997 y 1998 y en qué departamento.

select count(*), DEPT.DNOMBRE from EMP
inner join DEPT
on DEPT.DEPT_NO=EMP.DEPT_NO
group by DEPT.DNOMBRE
where EMP.FECHA_ALT between '010197' and '311298';



-------------------------------------------


-- CONSULTAS DE ACCION

select * from DEPT;

insert into DEPT values (50, 'PYTHON', 'GETAFE');

insert into DEPT (DEPT_NO, DNOMBRE) values (60, 'I+D');


------------------------------------

select MAX(EMPLEADO_NO) + 1 from PLANTILLA;

-- 9902

insert into PLANTILLA (EMPLEADO_NO, APELLIDO, FUNCION, TURNO, HOSPITAL_COD)
values ((select MAX(EMPLEADO_NO) + 1 from PLANTILLA), 'lopez', 'ENFERMERA', 'T', 22);

select * from PLANTILLA;




----------    DELETE    -------------

-- Eliminar a las personas de la Plantilla del Hospital El Carmen

delete from PLANTILLA where HOSPITAL_COD=
(select HOSPITAL_COD from HOSPITAL where NOMBRE='El Carmen');


-----------   UPDATE    -----------



update PLANTILLA set SALARIO=SALARIO + 1;

--MODIFICAR LA FUNCION DE LOS INTERINO A INTERINA Y SUBIR EL SALARIO EN 1

update PLANTILLA set FUNCION='INTERINA', SALARIO=SALARIO+1
where FUNCION='INTERINO';

update PLANTILLA set SALARIO = 
(select SALARIO from PLANTILLA where APELLIDO='karplus w.')
where SALA_COD=4;


--Modificar el TURNO a Mañana a todos los empleados de la Plantilla de la sala de Psiquiatria

update PLANTILLA set TURNO = 'M' where SALA_COD =
(select distinct SALA_COD from SALA where NOMBRE='psiquiatria');

select * from PLANTILLA;
select * from SALA;


--INSERTAR UN NUEVO REGISTRO EN PLANTILLA
--LA PERSONA SE LLAMA CABRALES, EN LA SALA 4, ENFERMERA, TURNO M
--Y TRABAJARA EN EL HOSPITAL DE EL CARMEN
--Y EL ID SERÁ EL MAXIMO EN LA CONSULTA


insert into PLANTILLA (APELLIDO, EMPLEADO_NO,SALA_COD, FUNCION, TURNO, HOSPITAL_COD)
values ('CABRALES 54',(select MAX(EMPLEADO_NO) from PLANTILLA) + 1, 4, 'ENFERMERA', 'M', (select HOSPITAL_COD from HOSPITAL where NOMBRE='El Carmen'));

--insert into HOSPITAL (25,'el carmen', el carmen 25, 913050055, 555);

--ELIMINAR LAS PERSONAS DE LA PLANTILLA
--QUE NO TENGAN HOSPITAL

select HOSPITAL_COD from HOSPITAL;

delete from PLANTILLA where HOSPITAL_COD not in 
(select HOSPITAL_COD from HOSPITAL);


select * from PLANTILLA where HOSPITAL_COD is null;
select * from HOSPITAL;

-------  La instruccion que elimina todos los registros de una tabla es rapida porque no tiene ROLLBACK (CUIDADO) es la instruccion TUNCATE -----------

rollback;

--------------  PRACTICA CONSULTAS DE ACCION  ---------------

--1. Dar de alta con fecha actual al empleado José Escriche Barrera como programador perteneciente al departamento de producción.
--   Tendrá un salario base de 70000 pts/mes y no cobrará comisión. 

insert into EMP values ((select MAX(EMP_NO) + 1 from EMP), 'escriche', 'PROGRAMADOR', 7839, '20/02/2025', 70000, 0, 50 );

--2. Se quiere dar de alta un departamento de informática situado en Fuenlabrada (Madrid).

insert into DEPT values (50, 'INFORMATICA', 'FUENLABRADA');

--3. El departamento de ventas, por motivos peseteros, se traslada a Teruel, realizar dicha modificación.

update DEPT set LOC='TERUEL' where DNOMBRE='VENTAS';

--4. En el departamento anterior (ventas), se dan de alta dos empleados: Julián Romeral y Luis Alonso.
--   Su salario base es el menor que cobre un empleado, y cobrarán una comisión del 15% de dicho salario.

insert into EMP (APELLIDO, FECHA_ALT, SALARIO, COMISION, DEPT_NO) values 
('Romeral', '20/02/25', (select MIN(SALARIO) from EMP), (select MIN(SALARIO) * 15%, (select DEPT_NO from DEPT where DNOMBRE='VENTAS');

insert into EMP (APELLIDO, FECHA_ALT, SALARIO, COMISION, DEPT_NO) values
('Alonso', '20/02/25', (select MIN(SALARIO) from EMP), (select MIN(SALARIO) * 15%, (select DEPT_NO from DEPT where DNOMBRE='VENTAS');

--5. Modificar la comisión de los empleados de la empresa, de forma que todos tengan un incremento del 10% del salario.

update EMP set SALARIO=SALARIO + 10%;

--6. Incrementar un 5% el salario de los interinos de la plantilla que trabajen en el turno de noche.

update PLANTILLA set SALARIO=SALARIO + 5% where FUNCION='INTERINO' and TURNO='N';

--7. Incrementar en 5000 Pts. el salario de los empleados del departamento de ventas y del presidente,
--   tomando en cuenta los que se dieron de alta antes que el presidente de la empresa.

update EMP set values SALARIO=SALARIO+5000 where DEPT_NO(select DEPT_NO where DNOMBRE='VENTAS') or 
OFICIO='PRESIDENTE' and FECHA_ALT<=(select FECHA_ALT from EMP where OFICIO ='PRESIDENTE');

--8. El empleado Sanchez ha pasado por la derecha a un compañero.  Debe cobrar de comisión 12.000 ptas más que el empleado Arroyo 
--   y su sueldo se ha incrementado un 10% respecto a su compañero.

update EMP set COMISION=(select COMISION from EMP where APELLIDO = 'arroyo') + 12000, SALARIO = (select SALARIO from EMP where APELLIDO = 'arroyo') + 10%;

--9. Se tienen que desplazar cien camas del Hospital SAN CARLOS para un Hospital de Venezuela.  Actualizar el número de camas del Hospital SAN CARLOS.

update HOSPITAL set NUM_CAMA=NUM_CAMA - 100 where NOMBRE='san carlos';

--10. Subir el salario y la comisión en 100000 pesetas y veinticinco mil pesetas respectivamente a los empleados que se dieron de alta en este año.

update EMP set SALARIO=SALARIO+100000 where FECHA_ALT='*/*/25', COMISION=COMISION+25000 where FECHA_ALT='*/*/25';

--11. Ha llegado un nuevo doctor a la Paz.  Su apellido es House y su especialidad es Diagnostico.   Introducir el siguiente número de doctor disponible.

insert into DOCTOR (DOCTOR_NO, APELLIDO, ESPECIALIDAD) values((select MAX(DOCTOR_NO) + 1 from DOCTOR), 'House', 'Diagnostico');

--12. Borrar todos los empleados dados de alta entre las fechas 01/01/80 y 31/12/82.





select * from DOCTOR;

select * from HOSPITAL;

select * from EMP;

select * from DEPT;

select * from PLANTILLA;











>>>>>>> 095b0fcaab36913a2d49efe669e76e44fd486765
