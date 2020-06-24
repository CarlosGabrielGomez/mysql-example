--dbb-biblioteca
--1.	Precio promedio de los libros de Salamandra

SELECT editoriales.nombre,avg(libros.precio)as 'precio promedio' from libros inner join editoriales on libros.id_editorial=editoriales.id_editorial GROUP by editoriales.nombre 

SELECT editoriales.nombre,avg(libros.precio)as 'precio promedio' from libros inner join editoriales on libros.id_editorial=editoriales.id_editorial GROUP by editoriales.nombre having editoriales.nombre='Salamandra' 


--2.	Mostrar cantidad de libros de cada editorial (cantidad | editorial)

SELECT editoriales.nombre ,COUNT(libros.id_editorial) 'libros por editorial' from libros inner join editoriales on libros.id_editorial=editoriales.id_editorial GROUP by editoriales.nombre 


--3.	¿Cuál es el libro más barato de la editorial Alfaguara?

SELECT libros.titulo,libros.precio,editoriales.nombre from libros inner join editoriales on libros.id_editorial=editoriales.id_editorial WHERE editoriales.nombre='Alfaguara' ORDER by libros.precio ASC LIMIT 1 




--4.	Mostrar título, autor y precio del libro junto a una columna que indique si es caro (precio > 450) o barato (precio < 450)


SELECT libros.titulo,libros.autor,.libros.precio ,if(libros.precio>450,'caro','barato') from libros

--5.	Mostrar los libros de la editorial Paidos que salgan menos de $600. El resultado a mostrar debe ser: titulo| autor | precio| editorial

SELECT libros.titulo,libros.autor,.libros.precio,editoriales.nombre FROM libros inner join editoriales on libros.id_editorial=editoriales.id_editorial where editoriales.nombre='Paidos' and libros.precio<600 