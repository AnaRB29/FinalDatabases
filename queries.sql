/*CREATE*/

/*Crear artista*/
INSERT INTO artistas (nombre, nombre_de_nacimiento, fecha_de_nacimiento, año_de_inicio, pais, genero) VALUES 
("Stephanie Joanne", "Lady gaga", "1986-03-28", "2001",65 ,1);

/*Crear una cancion*/
INSERT INTO canciones (nombre, duracion, disco ) VALUES
	("Open your eyes",187,1);

/*Crear un genero*/
INSERT INTO generos (nombre, instrumentación, pais) VALUES
("Rap", "Sinteizador y caja de ritmos", 65);

/*Crear un pais*/
INSERT INTO paises (nombre,iso2) VALUES
	("Nuevo pais", "NP");

/*Crear un disco*/
INSERT INTO discos (nombre, fecha_de_lanzamiento, cantidad_de_canciones, artista) VALUES
("Damgerous","1991-11-26",14,2);


/*READ*/

/*Leer todos los paises*/
SELECT * FROM paises;

/*Leer todos los nombres de todos los artistas*/
SELECT nombre FROM artistas;

/*Leer todas las canciones de un disco en particular*/
SELECT * FROM canciones WHERE disco = 1;

/*Leer todos losgeneros de un pais en particular*/
SELECT * FROM generos WHERE pais = 65;

/*Leer todos los discos que la cantidad de canciones sea mayor que 15*/
SELECT * FROM discos WHERE cantidad_de_canciones > 15;

/*UPDATE*/
UPDATE artistas SET nombre = "Bad Bunny" WHERE genero = 3;

UPDATE discos SET nombre  = "Love in present" WHERE disco_id = 1;

UPDATE generos SET nombre = "Techno" WHERE pais = 65;

UPDATE canciones SET nombre = "BOKER-T", duracion = 172 WHERE cancion_id =1;

UPDATE paises SET iso2 = "NI" WHERE iso2 = "NP";






DELETE FROM canciones WHERE cancion_id = 3; 


DELETE FROM canciones WHERE cancion_id = 4; 


DELETE FROM canciones WHERE cancion_id = 3; 

DELETE FROM paises WHERE pais_id = 246;

DELETE FROM paises WHERE pais_id = 155; 

