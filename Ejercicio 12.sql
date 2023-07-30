create database ejercicio12;
use ejercicio12;

create table profesores (
nombre varchar(100) unique,
apellido1 varchar(100),
apellido2 varchar(100),
dni varchar(8),
direccion varchar(100),
titulo varchar(100),
gana int not null,
primary key(dni)
);

create table cursos (
nombre_curso varchar(100) unique,
cod_curso int,
dni_profesor varchar(8),
maximo_alumnos int,
fecha_inicio date,
fecha_fin date,
num_horas int not null,
foreign key(dni_profesor) references profesores(dni)
on update cascade
on delete cascade,
primary key(cod_curso)
);

create table alumnos (
nombre varchar(100),
apellido1 varchar(100),
apellido2 varchar(100),
dni varchar(8),
direccion varchar(100),
sexo enum("H", "M"),
fecha_nacimiento date,
curso int not null,
foreign key(curso) references cursos(cod_curso)
on update cascade
on delete cascade,
primary key(dni)
);