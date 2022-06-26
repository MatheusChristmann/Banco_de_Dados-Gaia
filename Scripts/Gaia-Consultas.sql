/* RELATÓRIO 1

Relacionar o código, nome e tipo de todos os medicamentos. Ordene o relatório de forma ascendente pelo nome */

select 
	pro_cod,
	pro_nome,
	pro_tip_med 
from produto
order by pro_nome

----------------------------------------------------------------------------------

/* RELATÓRIO 2

Relacionar o nome do medicamento e o nome do fornecedor para todos os medicamentos. Filtre somente produtos com estoque maior
que 10. Ordene o relatório de forma descendente pelo nome do fornecedor */

select distinct
	pro_nome,
	pessoa.pes_nome 
from produto
inner join produto_movimento on (produto_movimento.prm_produto = produto.pro_cod and produto_movimento.prm_qtd_produto > 0)
inner join pessoa on (pessoa.pes_cod = produto_movimento.prm_pessoa)
where produto.pro_quantidade > 10
order by pessoa.pes_nome  desc
----------------------------------------------------------------------------------

/* RELATÓRIO 3 
 
Relacionar o código do medicamento, nome do medicamento, mês da venda, quantidade total de vendas no mês para meses entre 
anos de 2020 e 2021. Ordene o relatório do produto com mais vendas(em termos de quantidade) para o produto com menos vendas */

select 	
	pro_cod,
	pro_nome,
	extract(month from venda.ven_data) as "Mes",
	sum(venda_item.vei_qtd_item) as "Qtd Total Vendida"
from produto
inner join venda_item on (venda_item.vei_pro_cod  = produto.pro_cod)
inner join venda on (venda.ven_numero  = venda_item.vei_ven_numero)
where extract(year from venda.ven_data) in (2020,2021)
group by 1,2,3
order by "Qtd Total Vendida" desc

----------------------------------------------------------------------------------

/* RELATÓRIO 4 
  
Relacionar o cpf do cliente, nome do cliente e o total gasto em medicamentos. Filtrar somente clientes do sexo masculino, 
com idades entre 20 e 40 anos e que realizaram compras em meses pares de 2021. Ordene o relatório do cliente com mais gastos 
para o cliente com menos gastos. */

select 
	pes_cpfcnpj,
	pes_nome,
	sum(vei_total_item) as "Total em Compras"
from pessoa
inner join venda on (venda.cod_pessoa = pessoa.pes_cod)
inner join venda_item on (venda_item.vei_ven_numero = venda.ven_numero)
where pessoa.pes_genero = 'M'
and extract (year from age(current_date , pes_data_nascimento)) between 20 and 40
and mod(extract(month from venda.ven_data),2) = 0 and extract(year from venda.ven_data) = 2021
group by 1,2
order by "Total em Compras" desc;





