use companhia_aerea;

-- a) Listagem de Aeronaves ordenadas por tipo;
select * from aeronave order by tipo;

-- b) Relatório de Vôos das Aeronaves por período (dia);
select v.id as id_voo, an.modelo as modelo_aeronave, apo.nome as origem, apd.nome as destino, v.saida, v.previsao_chegada
from voo as v
inner join aeronave as an on v.id_aeronave = an.id
inner join aeroporto as apo on v.id_aeroporto_origem = apo.id
inner join aeroporto as apd on v.id_aeroporto_destino = apd.id
where date(saida) = "2024-08-06";

-- semana
select v.id as id_voo, an.modelo as modelo_aeronave, apo.nome as origem, apd.nome as destino, v.saida, v.previsao_chegada
from voo as v
inner join aeronave as an on v.id_aeronave = an.id
inner join aeroporto as apo on v.id_aeroporto_origem = apo.id
inner join aeroporto as apd on v.id_aeroporto_destino = apd.id
where week(saida) = week("2024-09-22");

-- mes
select v.id as id_voo, an.modelo as modelo_aeronave, apo.nome as origem, apd.nome as destino, v.saida, v.previsao_chegada
from voo as v
inner join aeronave as an on v.id_aeronave = an.id
inner join aeroporto as apo on v.id_aeroporto_origem = apo.id
inner join aeroporto as apd on v.id_aeroporto_destino = apd.id
where month(saida) = month("2024-06-11");

-- c) Listagem de vôos que fazem escala em um determinado local;

select v.id as id_voo, an.modelo as modelo_aeronave, apo.nome as origem, apd.nome as destino, v.saida, v.previsao_chegada
from voo as v
inner join escala as e on v.id = e.id_voo
inner join aeronave as an on v.id_aeronave = an.id
inner join aeroporto as apo on v.id_aeroporto_origem = apo.id
inner join aeroporto as apd on v.id_aeroporto_destino = apd.id
where e.id_aeroporto in (select id from aeroporto where pais = "Suíça");

-- d) Exibição de poltronas disponíveis em um determinado vôo/avião;

select id_aeronave, disponivel, localizacao from poltrona where id_aeronave = 1 and disponivel = true;