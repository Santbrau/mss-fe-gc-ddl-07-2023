create database ejercicio1;
use ejercicio1;

create table estacion (
identificador int auto_increment,
latitud double,
alongitud double,
altitud double,
primary key(identificador)
);

create table muestra (
identificadorEstacion int auto_increment,
fecha date,
temperatura_minima double,
temperatura_maxima double,
precipitaciones int,
humedad_minima int,
humedad_maxima int, 
velocidad_viento_minima int,
velocidad_viento_maxima int,
primary key(identificadorEstacion)
);