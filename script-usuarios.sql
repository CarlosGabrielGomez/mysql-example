--EJERCICIOS CLASE 2 DDBB-usuarios 
--1)	Mostrar una lista de los usuarios ordenada por edad de manera descendente
SELECT * FROM `usuarios` order by edad DESC 




--2)	Mostrar a todos los Estudiantes ordenados alfabéticamente (ascendente)
SELECT * FROM `usuarios` order by nombre asc 

--3)	Mostrar una lista de todos los estudiantes ordenada por apellido ascendente, y si tienen el mismo apellido, 
ordenados de menor a mayor edad.DISTINCT

SELECT * FROM `usuarios` order by apellido DESC,edad DESC 



--4)	¿Cuáles son los tipos de ocupación?LIMIT (min / max)
SELECT DISTINCT ocupacion FROM `usuarios` where ocupacion is not null 


--5)	 ¿Qué edad tiene el usuario más grande?

SELECT MAX(edad) from usuarios



--6)	Obtener nombre y edad del programador más joven. Colin, 14.COUNT

select nombre,edad from usuarios where edad =(select min(edad) as 'edad' from usuarios) 

--7)	 ¿Cuántas personas tienen más de 24 años?
select count(edad) from usuarios where edad >24 


--8)	¿Cuántos estudiantes hay?HAVING / COUNT

--select count(ocupacion)as 'cantidad de estudiantes' from usuarios where ocupacion ='estudiante' 


--9)	 Mostrar cantidad de personas con cada ocupación, mayores de 16 años, exceptuando los estudiantes.Integradores:

select ocupacion, count(ocupacion)as 'cantidad por ocupacion' from usuarios where ocupacion is not null and edad >16 GROUP by ocupacion HAVING ocupacion <> 'estudiante' 

--10)	Mostrar una lista con los 5 primeros usuarios registrados.
select * from usuarios LIMIT 5 



--11)	Mostrar una lista de los usuarios que no ingresaron su ocupación.

select * from usuarios where ocupacion is null 