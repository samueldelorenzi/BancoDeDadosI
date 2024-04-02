drop database compra;
create database compra;
use compra;

create table nota_fiscal (
	nro_nota int not null primary key,
    nm_cliente varchar(50),
    end_cliente varchar(60),
    dt_emissao datetime default current_timestamp,
    vl_total_nota double
);

create table item_nota_fiscal(
	cod_produto int primary key not null,
    nro_nota int not null,
    foreign key (nro_nota) references nota_fiscal(nro_nota),
    qtd_produto int,
    vl_produto double,
    vl_total double
);

show tables;
select * from nota_fiscal;
select * from item_nota_fiscal;