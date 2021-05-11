--update parcela 
--set dt_vcto = dt_vcto + INTERVAL'1 year'

--count_parcelas_previstas
select 
	EXTRACT(year FROM dt_vcto) || '/' || EXTRACT(month FROM dt_vcto) as periodo, 
	count(vl_par),
	sum(vl_par)
from parcela p 
where p.vl_pago is null 
and p.dt_vcto > current_date
group by 1

--parcelas vencidas
select 
	EXTRACT(year FROM dt_vcto) || '/' || EXTRACT(month FROM dt_vcto) as periodo,
	count(*),
	sum(vl_par)
from parcela p 
where p.vl_pago is null 
and p.dt_vcto <= current_date
group by 1

--parcelas pagas por vendedor
select 
	v.nm_vdd as vendedor,
	count(*),
	sum(vl_pago)
from parcela p 
join venda v2 on v2.cd_ven = p.cd_ven 
join vendedor v on v.cd_vdd = v2.cd_vdd 
where p.vl_pago is not null 
group by 1

--Vendas realizadas por vendedor por loja, por cliente
select 
	l.nm_loj as loja,
	c.nm_cli as cliente,
	count(*)
	sum((select sum(p.vl_par) from parcela p where p.cd_ven = v2.cd_ven )) valor,
from venda v2 
join loja l on l.cd_loj = v2.cd_loj 
join cliente c on c.cd_cli = v2.cd_cli 
group by 1,2

