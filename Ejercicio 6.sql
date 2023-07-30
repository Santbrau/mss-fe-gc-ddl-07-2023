create database ejercicio6;
use ejercicio6;

create table peliculas (
codigo int auto_increment,
nombre varchar(100),
calificacionEdad int,
primary key(codigo)
);

create table salas (
codigo int auto_increment,
nombre varchar(100),
pelicula int,
foreign key(pelicula) references peliculas(codigo)
on delete cascade
on update cascade,
primary key(codigo)
);