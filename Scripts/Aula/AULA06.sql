select 
	nf.nro_nota as numero,
    nf.nm_cliente as nome,
    prd.desc_produto as produto,
	inf.qtd_produto as quantidade
from 
	nota_fiscal as nf,
	item_nota_fiscal as inf,
    produto as prd
where 
	nf.nro_nota = inf.nro_nota
	and inf.cod_produto = prd.cod_produto
    and prd.cod_produto = 2
;
    
select
	nf.nm_cliente as cliente,
	sum(inf.vl_total) as valor
from
	nota_fiscal as nf,
    item_nota_fiscal as inf
where
	nf.nro_nota = inf.nro_nota
group by
	nf.nm_cliente
order by 
	valor desc
;