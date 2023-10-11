create database api_campos_cientificos;

use api_campos_cientificos;

create table areas (
	id_area int AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(75) not null
)ENGINE=INNODB;

create table lineas_investigacion (
	id_linea int PRIMARY KEY,
    id_area int not null,
    nombre varchar(75) not null
)Engine=InnoDB;

create table disciplinas (
    id_disciplina int PRIMARY KEY,
    id_linea int not null,
    nombre varchar(500) not null
)Engine=InnoDB;

alter table lineas_investigacion
add constraint fk_area_linea_investigacion foreign key (id_area) references areas(id_area);

alter table disciplinas
add constraint fk_
