drop database companhia_aerea;

create database companhia_aerea;

use companhia_aerea;

create table cliente(
	id int not null auto_increment primary key,
    nome varchar(255),
    endereco varchar(255),
    telefone varchar(255),
    email varchar(255),
    num_voos int
);

create table aeronave(
	id int not null auto_increment primary key,
    tipo varchar(255),
    poltronas int,
    modelo varchar(255)
);

create table aeroporto(
	id int not null auto_increment primary key,
	nome varchar(255),
    rua varchar(255),
    numero int,
	bairro varchar(255),
    cidade varchar(255),
    estado varchar(255),
    pais varchar(255)
);

create table voo(
	id int not null auto_increment primary key,
    id_aeronave int not null,
    id_aeroporto_origem int not null,
    id_aeroporto_destino int not null,
    saida timestamp,
    previsao_chegada timestamp,
    constraint fk_id_aeronave_voo foreign key (id_aeronave) references aeronave(id),
    constraint fk_id_aeroporto_origem_voo foreign key (id_aeroporto_origem) references aeroporto(id),
    constraint fk_id_aeroporto_destino_voo foreign key (id_aeroporto_destino) references aeroporto(id)
);

create table poltrona(
	id int not null auto_increment primary key,
    id_aeronave int not null,
    disponivel bool,
    localizacao varchar(255),
    constraint fk_id_aeronave_poltrona foreign key (id_aeronave) references aeronave(id)
);

create table passageiro(
	id_cliente int not null,
    id_voo int not null,
    passagem int,
    id_poltrona int not null,
    constraint pk_client_voo primary key (id_cliente, id_voo),
    constraint fk_id_poltrona_passageiro foreign key (id_poltrona) references poltrona(id),
    constraint fk_id_cliente_passageiro foreign key (id_cliente) references cliente(id),
    constraint fk_id_voo_passageiro foreign key (id_voo) references voo(id)
);

create table horario(
	id int not null auto_increment primary key,
    id_voo int not null,
    data date,
    inicio_horario time,
    final_horario time,
    constraint fk_id_voo_horario foreign key (id_voo) references voo(id)
);

create table escala(
	id int not null auto_increment primary key,
    id_voo int not null,
    id_aeroporto int not null,
    saida timestamp,
    constraint fk_id_voo_escala foreign key (id_voo) references voo(id),
    constraint fk_id_aeroporto_escala foreign key (id_aeroporto) references aeroporto(id)
);
