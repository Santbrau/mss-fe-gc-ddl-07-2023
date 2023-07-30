create database ejercicio7;
use ejercicio7;

create table despachos (
numero int,
capacidad int,
primary key(numero)
);

create table directores (
dni varchar(8),
nomApels varchar(255),
dniJefe varchar(8),
despacho int,
foreign key(despacho) references despachos(numero)
on delete cascade
on update cascade,
foreign key(dniJefe) references directores(dni)
on delete cascade
on update cascade,
primary key(dni)
);
