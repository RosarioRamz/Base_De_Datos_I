-- Borrar la base de datos si ya existe 
DROP DATABASE IF EXISTS juego;
-- Crea la base de datos
CREATE DATABASE juego;
-- hacer uso de la base de datos
USE juego;
-- Crea tabla jugador
CREATE TABLE jugador(
	idjugador int not null AUTO_INCREMENT,
    nombre varchar(50) not null,
    nivel int null,
    fechaAlta date null,
	CONSTRAINT jugador_pk PRIMARY KEY(idjugador)
);
-- Crea la tabla campeon
CREATE TABLE campeon(
	idcampeon int not null AUTO_INCREMENT,
    nombre varchar(50) not null,
    tipo varchar(50)null ,
    precio decimal(6,2)null,
    fechaIntroduccion date null,
    CONSTRAINT campeon_pk PRIMARY KEY(idcampeon)
    
);

-- Crear tabla intermedia
CREATE TABLE jugador_campeon(
	jugadorId int not null,
    campeonId int not null,
    numeroBatalla int not null,
    constraint batalla_jugador FOREIGN KEY (jugadorId) REFERENCES jugador(idjugador),
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    constraint batalla_campeon FOREIGN KEY (campeonId) REFERENCES campeon(idcampeon),
    ON DELETE CASCADE
    ON UPDATE CASCADE
    
);