CREATE DATABASE IF NOT EXISTS tienda;

USE tienda;

CREATE TABLE paises(
  pais_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  iso2 CHAR(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE generos(
  genero_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  instrumentación VARCHAR(60) NOT NULL,
 pais INTEGER UNSIGNED, FOREIGN KEY (pais)
    REFERENCES paises(pais_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE artistas(
  artista_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) UNIQUE NOT NULL,
  nombre de nacimiento VARCHAR(50) NOT NULL,
  fecha de nacimiento DATETIME NOT NULL,
  año de inicio DATETIME NOT NULL,
  pais INTEGER UNSIGNED, FOREIGN KEY (pais)
    REFERENCES paises(pais_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
  genero INTEGER UNSIGNED, FOREIGN KEY (genero)
    REFERENCES generos(genero_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE discos(
  disco_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  fecha de lanzamiento DATETIME NOT NULL,
  cantidad de canciones INTEGER NOT NULL,
  artista INTEGER UNSIGNED FOREIGN KEY (artista),
    REFERENCES artistas(artista_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
  genero INTEGER UNSIGNED, FOREIGN KEY (genero)
    REFERENCES generos(genero_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE canciones(
  cancion_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(40) NOT NULL,
  duracion FLOAT NOT NULL,
 discos INTEGER UNSIGNED, FOREIGN KEY (disco)
    REFERENCES discos(disco_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
 artista INTEGER UNSIGNED FOREIGN KEY (artista),
    REFERENCES artistas(artista_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;