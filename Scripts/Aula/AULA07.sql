-- inner join
-- retorna os registros que sao comuns entre as tabelas
select
	nf.nro_nota, nf.nm_cliente, count(inf.cod_produto) as qtd, sum(inf.vl_total) as total
from
	nota_fiscal as nf
    
inner join item_nota_fiscal as inf
	on nf.nro_nota = inf.nro_nota
group by nf.nro_nota
order by qtd desc;

-- inner join
select
	nf.nro_nota, nf.nm_cliente, p.desc_produto
from
	nota_fiscal as nf
inner join item_nota_fiscal as inf
	on nf.nro_nota = inf.nro_nota
inner join produto as p
	on inf.cod_produto = p.cod_produto
order by nf.nro_nota asc;

-- left join
-- retorna os registros que estao na tabela a esquerda, mesmo que nao estejam a direita e os registros da tabela direita que sao comuns a ela
select
	nf.nro_nota, nf.nm_cliente, p.desc_produto
from
	nota_fiscal as nf
left join item_nota_fiscal as inf
	on nf.nro_nota = inf.nro_nota
left join produto as p
	on inf.cod_produto = p.cod_produto
order by nf.nro_nota asc;

-- right join
-- usamos para exibir os registros que estao na tabela a direita mesmo que nao estejam na tabela a esquerda, e os registros da tabela a esqurda que sao comuns com a da direita
select
	nf.nro_nota, nf.nm_cliente, p.desc_produto
from
	nota_fiscal as nf
right join item_nota_fiscal as inf
	on nf.nro_nota = inf.nro_nota
right join produto as p
	on inf.cod_produto = p.cod_produto
order by nf.nro_nota asc;