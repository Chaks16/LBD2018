drop database TicketMaster
create database TicketMaster 
use TicketMaster 
create table evento(
	id_evento int primary key,
	nombre_evento varchar(100),
	poster image,
	desc_evento varchar(300), 
	nombre_lugar varchar(100),
	fecha_evento datetime,
	duracion_evento time,
	costo_evento money,
	iva_evento decimal(4,2)
)
create table lugar(
	id_lugar int primary key,
	nombre_lugar varchar(50),
	imagen_lugar image,
	zona varchar(20),
	capacidad int,
	direccion varchar(150)
)

create table boleto(
	id_boleto int primary key,
	tipo_boleto varchar,
	nombre_evento varchar(100),
	nombre_lugar varchar(100),
	fecha_evento datetime,
	duracion_evento time,
	zona varchar(20),
	costo_evento money,
	nombre varchar(20),
	apellido_paterno varchar(15),
	apellido_materno varchar(15),
	nombre_completo as nombre + ' ' + apellido_paterno + ' ' + apellido_materno
)
create table usuario(
	id_usuario int primary key,
	nombre varchar(20),
	apellido_paterno varchar(15),
	apellido_materno varchar(15),
	email varchar(50),
	contra varchar(20) 
)
create table FormaPago(
	id_ForPag int primary key,
	forma_nombre varchar(20)	
)
CREATE INDEX index_evento
ON evento (id_evento, nombre_evento);
CREATE INDEX index_lugar
ON lugar (id_lugar, nombre_lugar);
CREATE INDEX index_boleto
ON boleto (id_boleto, tipo_boleto);
CREATE INDEX index_usuario
ON usuario (id_usuario, email);
CREATE INDEX index_FormaPago
ON FormaPago (id_ForPag, forma_nombre);

alter table usuario
add constraint verificacion_contra
check(contra like '[A-Z][a-z][a-z][a-z][a-z][a-z][1-9][1-9][1-9][1-9]');


insert into dbo.boleto(id_boleto, tipo_boleto,nombre,apellido_materno,apellido_paterno) values(1, 'a','a','b','c')
select*from dbo.boleto

update  dbo.boleto set nombre = 'sas' where id_boleto = 1