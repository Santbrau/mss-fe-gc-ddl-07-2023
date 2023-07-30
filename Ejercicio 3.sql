create database ejercicio3;
use ejercicio3;

create table fabricantes (
codigo int auto_increment,
nombre varchar(100),
primary key(codigo)
);

create table articulos (
codigo int auto_increment,
nombre varchar(100),
precio int,
fabricante int,
foreign key(fabricante) references fabricantes(codigo)
on update cascade
on delete cascade,
primary key(codigo)
);
