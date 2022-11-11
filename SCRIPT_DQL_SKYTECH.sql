/* GRUPO SKYTECH

RM94319 - DIOGO DE JESUS OLIVEIRA 
RM93112 - LUCIAYLA YUMI KAWAKAMI 
RM93427 - MAIKI CESAR FERREIRA LEITE 
RM93667 - PEDRO DE OLIVEIRA COSTA 
RM93993 - RAFAEL SANTOS M. COSTA */

/* Filtro pela tabela pedido, os cliente que obtiveram o novalgina 1g em sua compra */


select * from t_dpse_pedido
where ds_pedido like '%Novalgina 1g'
order by cd_cliente desc;

/* Junção das tabelas Empresa e Pedido com filtro do código da empresa, apresentando também cnpj da empresa e data do pedido  */
select E.cd_empresa, E.nr_cnpj, P.dt_pedido from t_dpse_empresa E
inner join t_dpse_pedido P
on (E.cd_empresa = P.cd_empresa)
where E.cd_empresa = 8301
order by E.cd_empresa asc;

/* Filtro de valor do pedido mais caro */
select max(vl_pedido) as "pedido de maior valor" from t_dpse_pedido;

/* Junção das tabelas Cliente e Pedido, e filtro da compra de menor valor dos pedidos das pessoas com sobrenome "Costa" */
select min(A.vl_pedido) as "Valor do Pedido",
C.cd_cliente as "Codigo do Cliente", 
C.nm_cliente as "Nome do Cliente" 
from t_dpse_cliente C
inner join t_dpse_pedido A
on (C.cd_cliente = A.cd_cliente)
group by C.cd_cliente, C.nm_cliente
having C.nm_cliente like '%Costa%'
order by C.cd_cliente desc