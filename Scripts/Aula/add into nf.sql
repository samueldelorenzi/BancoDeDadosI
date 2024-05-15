insert into nota_fiscal (nm_cliente, end_cliente, nm_vendedor, vl_total)
values ("Smeagol", "Pântano", "Sauron", 36.60);

select * from nota_fiscal where nm_cliente = "Smeagol";

select * from produto;

insert into nota_fiscal (nm_cliente, end_cliente, nm_vendedor, vl_total)
values ("E tome", "Lanchonete", "Donalds", 123.60);

insert into item_nota_fiscal (nro_nota, cod_produto, qtd_produto, vl_preco, vl_total)
values (9, 3, 2, 18.3, 36.60);

insert into produto ( desc_produto, un_med, vl_produto) values ("Queijo", "Kg", 30.00);

insert into produto ( desc_produto, un_med, vl_produto) values ("Copa", "Kg", 70.00);