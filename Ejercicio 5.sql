create database ejercicio5;
use ejercicio5;

create table almacenes (
codigo int auto_increment,
lugar varchar(100),
capacidad int,
primary key(codigo)
);

create table cajas (
numReferencia char(5),
contenido varchar(100),
valor int,
almacen int,
foreign key(almacen) references almacenes(codigo)
on update cascade
on delete cascade,
primary key(numReferencia)
);


