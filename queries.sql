INSERT INTO artistas (nombre, genero) VALUES ("Agregar artista", "R")
SELECT * FROM artistas;
SELECT * FROM artistas WHERE artista_id = 5;
UPDATE artistas SET nombre = "Bad Bunny", genero = "UL"
DELETE FROM artistas WHERE artista_id = 5; 

INSERT INTO canciones (nombre, duracion) VALUES ("Cancion nueva", "03:00")
SELECT * FROM canciones;
SELECT * FROM canciones WHERE cancion_id = 3;
UPDATE canciones SET nombre = "BOKER-T", duracion = "02:52"
DELETE FROM canciones WHERE cancion_id = 3; 

INSERT INTO generos (nombre, pais) VALUES ("Genero nuevo", "US")
SELECT * FROM generos;
SELECT * FROM generos WHERE genero_id = 4;
UPDATE generos SET nombre = "Techno", pais = "US"
DELETE FROM canciones WHERE cancion_id = 4; 

INSERT INTO canciones (nombre, duracion) VALUES ("Cancion nueva", "03:00")
SELECT * FROM canciones;
SELECT * FROM canciones WHERE cancion_id = 3;
UPDATE canciones SET nombre = "BOKER-T", duracion = "02:52"
DELETE FROM canciones WHERE cancion_id = 3;  

