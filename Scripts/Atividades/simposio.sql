-- criando db
drop database simposio;
create database simposio;
use simposio;

create table tema(
	id int not null auto_increment primary key,
    nome varchar(255),
    descricao varchar(255)
);

create table artigo(
	id int not null auto_increment primary key,
    titulo varchar(255),
    descricao varchar(255),
    tipo varchar(255),
    id_tema int not null,
    constraint fk_id_tema_artigo foreign key (id_tema) references tema(id)
);

create table comissao(
	id int not null auto_increment primary key,
    assunto varchar(255),
    descricao varchar(255),
    id_tema int not null,
    constraint fk_id_tema_comissao foreign key (id_tema) references tema(id)
);

create table organizacao(
	id int not null auto_increment primary key,
    atribuicoes varchar(255)
);

create table parecer(
	id_comissao int not null,
    id_artigo int not null,
    nota double,
    descricao varchar(255),
    constraint pk_comissao_artigo primary key (id_artigo, id_comissao),
    constraint fk_id_comissao_parecer foreign key (id_comissao) references comissao(id),
    constraint fk_id_artigo_parecer foreign key (id_artigo) references artigo(id)
);

create table universidade(
	id int not null auto_increment primary key,
    nome varchar(255),
    rua varchar(255),
    numero int,
    bairro varchar(255),
    cidade varchar(255),
    pais varchar(255),
    cep varchar(20)
);

create table simposio(
	id int not null auto_increment primary key,
    nome varchar(255),
    data_hora_inicio datetime,
    data_hora_fim datetime,
    id_universidade int not null,
    constraint fk_id_universidade_simposio foreign key (id_universidade) references universidade(id)
);

create table palestra(
	id int not null auto_increment primary key,
    nome varchar(255),
    assunto varchar(255),
    local varchar(255),
    hora datetime,
    id_simposio int not null,
    constraint fk_id_simposio_palestra foreign key (id_simposio) references simposio(id)
);

create table minicurso(
	id int not null auto_increment primary key,
    nome varchar(255),
    assunto varchar(255),
    local varchar(255),
    hora datetime,
    id_simposio int not null,
    constraint fk_id_simposio_minicurso foreign key (id_simposio) references simposio(id)
);

create table inscricao(
	id_palestra int not null,
    id_minicurso int not null,
    nome varchar(255),
    data_hora_inscricao datetime,
    constraint pk_palestra_minicurso primary key (id_palestra, id_minicurso),
    constraint fk_id_palestra_inscricao foreign key (id_palestra) references palestra(id),
    constraint fk_id_minicurso_inscricao foreign key (id_minicurso) references minicurso(id)
);

create table pessoa(
	id int not null auto_increment primary key,
    nome varchar(255),
    idade int,
    email varchar(255),
    id_simposio int not null,
    constraint fk_id_simposio_pessoa foreign key (id_simposio) references simposio(id)
);

create table palestrante(
	id_palestra int not null,
    id_pessoa int not null,
    constraint pk_palestra_pessoa primary key (id_palestra, id_pessoa),
    constraint fk_id_pessoa_palestrante foreign key (id_pessoa) references pessoa(id),
    constraint fk_id_palestra_palestrante foreign key (id_palestra) references palestra(id)
);

create table professor(
	id_minicurso int not null,
    id_pessoa int not null,
    especializacao varchar(255),
    constraint pk_minicurso_pessoa primary key (id_minicurso, id_pessoa),
    constraint fk_id_pessoa_professor foreign key (id_pessoa) references pessoa(id),
    constraint fk_id_minicurso_professor foreign key (id_minicurso) references minicurso(id)
);

create table organizador(
	id_organizacao int not null,
    id_pessoa int not null,
    constraint pk_organizacao_pessoa primary key (id_organizacao, id_pessoa),
    constraint fk_id_pessoa_organizador foreign key (id_pessoa) references pessoa(id),
    constraint fk_id_organizacao_organizador foreign key (id_organizacao) references organizacao(id)
);

create table comissionario(
	id_comissao int not null,
    id_pessoa int not null,
    constraint pk_comissao_pessoa primary key (id_comissao, id_pessoa),
    constraint fk_id_pessoa_comissionario foreign key (id_pessoa) references pessoa(id),
    constraint fk_id_comissao_comissionario foreign key (id_comissao) references comissao(id)
);