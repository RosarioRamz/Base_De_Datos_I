CREATE DATABASE aerolinea;
use aerolinea;


CREATE TABLE piloto(id int,nombre varchar(50),direccion varchar(50), clave int, sexo varchar(10), PRIMARY KEY(id));
CREATE TABLE pasajero(id int, clase varchar(50),asiento int, nombre varchar(50), origen varchar(50), PRIMARY KEY(id));
CREATE TABLE vuelo (id int,modelo int, capacidad int, numvuelo int,pilotoid int, pasajeroid int, foreign key(pilotoid) references piloto(id),foreign key(pasajeroid) references pasajero(id), PRIMARY KEY(id));
