create database ejercicio4;
use ejercicio4;

create table departamentos (
codigo int,
nombre varchar(100),
presupuesto int,
primary key(codigo)
);

create table empleados (
dni varchar(8),
nombre varchar(100),
apellidos varchar(255),
departamentos int,
foreign key(departamentos) references departamentos(codigo)
on update cascade
on delete cascade,
primary key(dni)
);

