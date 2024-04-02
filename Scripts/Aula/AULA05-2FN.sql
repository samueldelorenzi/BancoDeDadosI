drop database nota_fiscal_normalizada;
create database nota_fiscal_normalizada;
use nota_fiscal_normalizada;

create table nota_fiscal (
	nro_nota int not null auto_increment primary key,
    nm_cliente varchar(256) not null,
    end_cliente varchar(256) not null,
    nm_vendedor varchar(256) not null,
    dt_emissao datetime default current_timestamp,
    vl_total double not null
);

create table produto(
	cod_produto int not null primary key auto_increment,
    desc_produto varchar(256) not null,
    un_med varchar(2) not null,
    vl_produto double not null
);

create table item_nota_fiscal(
	nro_nota int not null,
    cod_produto int not null,
    qtd_produto int not null,
    vl_preco double not null,
    vl_total double not null,
    primary key(nro_nota, cod_produto),
    constraint fk_nro_nota_nota_fiscal foreign key (nro_nota) references nota_fiscal(nro_nota), 
    constraint fk_cod_produto_produto foreign key (cod_produto) references produto(cod_produto)
);

insert into produto (desc_produto, un_med, vl_produto) values ("Leite", "lt", 3.60);
insert into produto (desc_produto, un_med, vl_produto) values ("Salame", "kg", 40.00);
insert into produto (desc_produto, un_med, vl_produto) values ("Rexona", "un", 18.30);

insert into nota_fiscal (nm_cliente, end_cliente, nm_vendedor, vl_total) values ("Marcos", "Rua das pedras", "Castro", 120.99);

insert into item_nota_fiscal (nro_nota, cod_produto, qtd_produto, vl_preco, vl_total) values (1, 1, 1, 3.60, 3.60);
insert into item_nota_fiscal (nro_nota, cod_produto, qtd_produto, vl_preco, vl_total) values (1, 2, 2, 40.00, 80.00);
insert into item_nota_fiscal (nro_nota, cod_produto, qtd_produto, vl_preco, vl_total) values (1, 3, 1, 18.30, 18.30);

select * from item_nota_fiscal;