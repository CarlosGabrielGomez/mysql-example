    --ddbb-empleados
--1)	¿Cuáles son los nombres y la ocupación de cada uno de los empleados? 
SELECT nombre,trabajo FROM `empleados` 

--2)	¿Cuál es el nombre y la edad de cada uno de los empleados?
SELECT nombre ,edad FROM `empleados` 


--3)	¿Cuál es el nombre y la edad de todos los programadores?
SELECT nombre,edad FROM `empleados` WHERE trabajo='Programador' 



--4)	¿Cuáles son los empleados de más de 30 años? Mostrar nombre, apellido y edad
SELECT nombre,apellido,edad FROM `empleados` WHERE edad >30 


--5)	¿Cuál es el apellido y el mail de los empleados llamados Juan?
SELECT apellido,email FROM `empleados` WHERE nombre ='Juan' 




--6)	¿Cuál es el nombre y la ocupación de las personas que trabajan como Programadores o Desarrolladores Web?



SELECT nombre,trabajo FROM `empleados` WHERE trabajo LIKE "%Programador%" or trabajo LIKE "%Desarrollador Web%" 

--7)	Mostrar una lista (id_emp, nombre, apellido, trabajo) las personas cuyo numero de empleado esté entre 15 y 20

SELECT id_emp,nombre,apellido,trabajo FROM `empleados` WHERE id_emp >=15 AND id_emp<=20 

--8)	¿Cuáles son los Programadores que ganan menos de $800?


SELECT * FROM `empleados` WHERE trabajo LIKE'%Programador%' and salario <800 
--9)	¿Cuáles son los Programadores que ganan entre $750 y  $900?

SELECT * FROM `empleados` WHERE trabajo LIKE'%Programador%' and salario >=750 AND salario <=950 

--10)	 ¿Cuáles son los trabajadores cuyo apellido comienza con s?

select *from empleados where apellido LIKE 's%' 

--11)	¿Cuáles son los trabajadores cuyo nombre termina en l?

select *from empleados where nombre LIKE '%l' 


--12)	Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez,  Programador, 26 años, salario 900, mail: francisco@bignet.com

insert into empleados values(22,'Francisco', 'Perez','Programador', 26,900,'francisco@bignet.com') 

--13)	Borrar los datos de Hernán Rosso
DELETE from empleados where id_emp = 9 

--14)	Modificar los datos de Daniel Gutierrez, salario 900.

update empleados set nombre='guti' where id_emp =14 