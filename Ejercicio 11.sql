create database ejercicio11;
use ejercicio11;

create table facultad (
codigo int,
nombre varchar(100),
primary key(codigo)
);

create table investigadores (
dni varchar(8),
nomApels varchar(100),
facultad int,
foreign key(facultad) references facultad(codigo)
on update cascade
on delete cascade,
primary key(dni)
);

create table equipos (
numSerie varchar(4),
nombre varchar(100),
facultad int,
foreign key(facultad) references facultad(codigo)
on update cascade
on delete cascade,
primary key(numSerie)
);

create table reserva (
dni varchar(8),
numSerie varchar(4),
comienzo datetime,
fin datetime,
foreign key(dni) references investigadores(dni)
on update cascade
on delete cascade,
foreign key(numSerie) references equipos(numSerie)
on update cascade
on delete cascade,
primary key(dni, numSerie)
);