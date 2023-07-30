create database ejercicio10;
use ejercicio10;

create table productos (
codigo int auto_increment,
nombre varchar(100),
precio int,
primary key(codigo)
);

create table cajeros (
codigo int auto_increment,
nomApels varchar(255),
primary key(codigo)
);

create table maquinas_registradoras (
codigo int auto_increment,
piso int,
primary key(codigo)
);

create table venta (
cajero int,
maquina int,
producto int,
foreign key(cajero) references cajeros(codigo)
on update cascade
on delete cascade,
foreign key(maquina) references maquinas_registradoras(codigo)
on update cascade
on delete cascade,
foreign key(producto) references productos(codigo)
on update cascade
on delete cascade,
primary key(cajero, maquina, producto)
);