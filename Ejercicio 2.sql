create database ejercicio2;
use ejercicio2;

create table editorial (
claveEditorial smallint auto_increment,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
primary key(claveEditorial)
);

create table libro (
claveLibro int auto_increment,
titulo varchar(60),
idioma varchar(15),
formato varchar(15),
claveEditorial smallint,
foreign key(claveEditorial) references editorial(claveEditorial)
on update cascade
on delete cascade,
primary key(claveLibro)
);

create table tema (
claveTema smallint auto_increment,
nombre varchar(40),
primary key(claveTema)
);

create table autor (
claveAutor int auto_increment,
nombre varchar(60),
primary key(claveAutor)
);

create table ejemplar (
claveEjemplar int auto_increment,
claveLibro int,
numeroOrden smallint,
edicion smallint,
ubicacion varchar(15),
categoria char,
primary key(claveEjemplar)
);

create table socio (
claveSocio int auto_increment,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
categoria char,
primary key(claveSocio)
);

create table prestamo (
claveSocio int,
claveEjemplar int,
numeroOrden smallint,
fecha_prestamo date,
fecha_devolucion date,
notas blob,
foreign key(claveSocio) references socio(claveSocio)
on update cascade
on delete cascade,
foreign key(claveEjemplar) references ejemplar(claveEjemplar)
on update cascade
on delete cascade,
primary key(claveSocio, claveEjemplar)
);

create table trata_sobre (
claveLibro int,
claveTema smallint,
foreign key(claveLibro) references libro(claveLibro)
on update cascade
on delete cascade,
foreign key(claveTema) references tema(claveTema)
on update cascade
on delete cascade,
primary key(claveLibro, claveTema)
);

create table escrito_por (
claveLibro int,
claveAutor int,
foreign key(claveLibro) references libro(claveLibro)
on update cascade
on delete cascade,
foreign key(claveAutor) references autor(claveAutor)
on update cascade
on delete cascade,
primary key(claveLibro, claveAutor)
);