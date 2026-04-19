create database canaldetelevision;

use canaldetelevision;

create table novelas(
    id_novelas int primary key,
    nombre varchar(20) not null,
    reparto varchar(30) not null,
    horario_ini TIME not null,
    horario_fin TIME not null,
    director varchar(15) not null,
    estreno DATE
);
create table estudio(
    id_estudio int primary key,
    ubicacion varchar(15) not null,
    nro_Cam varchar(2) not null,
    utileria varchar(12) not null,
    capacidad int not null
);
create table programas(
    id_programa int primary key,
    id_estudio int,
    nombre varchar(20) not null,
    horario_inicio TIME not null,
    horario_final TIME not null,
    conductor varchar(15) not null,
    elenco varchar(15) not null,
    productor varchar(15) not null,
    estado varchar(12) not null,
    audiencia varchar(2) not null,
    vivo boolean not null,

    CONSTRAINT fk_programas FOREIGN KEY (id_estudio) REFERENCES estudio(id_estudio)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

create table canal(
    id_canal int primary key,
    id_programa int,
    id_novelas int,
    CONSTRAINT fk_canal_programa FOREIGN KEY (id_programa) REFERENCES programas(id_programa)
        ON DELETE SET NULL
      ON UPDATE CASCADE,

    CONSTRAINT fk_canal_novela FOREIGN KEY (id_novelas) REFERENCES novelas(id_novelas)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

create table episodios(
    id_episodios int primary key,
    nro_epis INT not null,
    temporadas INT not null,
    id_novelas int,
    CONSTRAINT fk_novelas FOREIGN KEY (id_novelas) REFERENCES novelas(id_novelas)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


create table invitados(
    id_invitados int primary key,
    nombre varchar(10) not null,
    apellido varchar(10) not null,
    profesion varchar(15) not null,
    id_programa int,
    CONSTRAINT fk_programa FOREIGN KEY (id_programa) REFERENCES programas(id_programa)
        ON DELETE CASCADE
        ON UPDATE CASCADE
); 
