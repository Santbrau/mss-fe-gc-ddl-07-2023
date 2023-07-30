create database ejercicio8;
use ejercicio8;

create table piezas (
codigo int auto_increment,
nombre varchar(100),
primary key(codigo)
);

create table proveedores (
id char(4),
nombre varchar(100),
primary key(id)
);

create table suministra (
codigoPieza int,
idProveedor char(4),
precio int,
foreign key(codigoPieza) references piezas(codigo)
on delete cascade
on update cascade,
foreign key(idProveedor) references proveedores(id)
on delete cascade
on update cascade,
primary key(codigoPieza, idProveedor)
);
