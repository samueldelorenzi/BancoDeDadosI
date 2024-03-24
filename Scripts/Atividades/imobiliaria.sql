-- criando db
drop database imobiliaria;
create database imobiliaria;
use imobiliaria;

-- tabela localidade
create table localidade(
	id int not null auto_increment primary key,
    localidade varchar(30)
);

-- tabela categoria
create table categoria(
	id int not null auto_increment primary key,
    categoria varchar(30)
);

-- tabela negocio
create table negocio(
	id int not null auto_increment primary key,
    negocio varchar(30)
);

-- tabela principal imovel
create table imovel(
	id int not null auto_increment primary key,
    nome varchar(50),
    descricao varchar (255),
    valor double,
    comodos int,
    id_categoria int not null,
    id_localidade int not null,
    id_negocio int not null,
    constraint fk_id_imovel_categoria foreign key (id_categoria) references categoria(id),
    constraint fk_id_imovel_localidade foreign key (id_localidade) references localidade(id),
    constraint fk_id_imovel_negocio foreign key (id_negocio) references negocio(id)
);

create table imagem(
	id int not null auto_increment primary key,
    id_imovel int not null,
    caminho_imagem varchar(1024), 
    constraint fk_id_imagem_imovel foreign key (id_imovel) references imovel(id)
);

insert into imobiliaria.localidade (localidade) values ("rural"), ("urbano");
insert into imobiliaria.negocio (negocio) values ("locação"), ("venda");
insert into imobiliaria.categoria (categoria) values ("apartamento"), ("casa"), ("sítio");
insert into imobiliaria.imovel (nome, descricao, valor, comodos, id_categoria, id_localidade, id_negocio) values
	("casa do campo", "casa localizada no campo", 214234.23, 4, 2, 1, 2),
    ("casa da cidade", "casa localizada na cidade", 450000.23, 6, 2, 2, 1),
    ("ap da cidade", "ap no centro", 15000000.93, 10, 1, 2, 2);
insert into imobiliaria.imagem (id_imovel, caminho_imagem) values 
	(1, "c:\\users\\samuel\\downloads\\fotocasacampo.jpg"),
    (1, "c:\\users\\samuel\\downloads\\fotocasacampo2.jpg"),
    (1, "c:\\users\\samuel\\downloads\\fotocasacampo3.jpg"),
    (2, "c:\\users\\samuel\\imagens\\fotocasacidade.png"),
    (3, "c:\\users\\samuel\\imagens\\fotosbd\\fotoapcidade.jpg");

-- imovel completa
select * from imobiliaria.imovel;

-- imagem completa + nome do imovel que se refere as imagens
select imagem.*, imovel.nome from imobiliaria.imagem join imobiliaria.imovel on imagem.id_imovel = imovel.id;

-- imovel completa porem no lugar dos ids estao os itens a que eles se referem
select imovel.id, imovel.nome, imovel.descricao, imovel.valor, imovel.comodos , localidade.localidade as localidade, negocio.negocio as negocio, categoria.categoria as categoria 
from imovel
join localidade on imovel.id_localidade = localidade.id
join negocio on imovel.id_negocio = negocio.id
join categoria on imovel.id_categoria = categoria.id
order by imovel.id;
