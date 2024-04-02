drop database cadastro_funcionario;
create database cadastro_funcionario;
use cadastro_funcionario;

create table nacionalidade (
	id int not null auto_increment primary key,
	nacionalidade varchar(100) not null
);

create table funcionario (
	matricula int not null primary key,
	nome varchar(50) not null,
	nascimento date not null,
	estado_civil varchar(20) not null,
	id_nacionalidade int not null,
	sexo varchar(1) not null,
	rg varchar(14) not null,
	cic varchar(50) not null,
	endereco varchar(100) not null,
	telefone varchar(20) not null,
	constraint fk_funcionario_nacionalidade foreign key (id_nacionalidade) references nacionalidade(id)
);

create table dependente (
	id int not null auto_increment primary key,
	nome varchar(100) not null,
	nascimento date not null,
	id_funcionario int not null,
	relacao varchar(50) not null,
	constraint fk_id_dependente_funcionario foreign key (id_funcionario) references funcionario(matricula)
);

create table cargo (
	id int not null auto_increment primary key,
	cargo varchar(100) not null
);

create table departamento (
	id int not null auto_increment primary key,
	departamento varchar(100)
);

create table cargo_ocupado (
	id int not null auto_increment primary key,
	id_cargo int not null,
	data_inicio date not null,
	data_saida date,
	id_departamento int not null,
	constraint fk_cargo_cargo_ocupado foreign key (id_cargo) references cargo(id) ,
	constraint fk_departamento_cargo_ocupado foreign key (id_departamento) references departamento(id)
);


