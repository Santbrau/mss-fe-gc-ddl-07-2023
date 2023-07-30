create database ejercicio9;
use ejercicio9;

create table cientificos (
dni varchar(8),
nomApels varchar(255),
primary key(dni)
);

create table proyecto (
id char(4),
nombre varchar(255),
horas int,
primary key(id)
);

create table asignado_a (
cientifico varchar(8),
proyecto char(4),
foreign key(cientifico) references cientificos(dni)
on update cascade
on delete cascade,
foreign key(proyecto) references proyecto(id)
on update cascade
on delete cascade,
primary key(cientifico, proyecto)
);
