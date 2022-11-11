/* GRUPO SKYTECH

RM94319 - DIOGO DE JESUS OLIVEIRA 
RM93112 - LUCIAYLA YUMI KAWAKAMI 
RM93427 - MAIKI CESAR FERREIRA LEITE 
RM93667 - PEDRO DE OLIVEIRA COSTA 
RM93993 - RAFAEL SANTOS M. COSTA */

-- Tabela empresa
insert into t_dpse_empresa values(8301, 9371, 03819320193716, 'Drogaria São Paulo',
'Av. Santa Cruz', null, 'drogariasp@gmail.com', 11937210274, 'João Pedro Augusto');

insert into t_dpse_empresa values(6472, 7462, 93291846194016, 'Drogasil',
'Av. Bras leme', null, 'drogasil@gmail.com', 1192048174, 'Maria Fernanda Santos');

insert into t_dpse_empresa values(1939, 2119, 76320449381046, 'Droga Raia',
'Av. Água Fria', 'www.drogaraia.com.br', 'drogaraia@gmail.com', 11937210274, 'Pedro Oliveira');

insert into t_dpse_empresa values(4291, 8364, 99271840110483, 'Pague Menos',
'R. Vaz Muniz', 'www.paguemenos.com.br', null, 11937210274, 'Renato Silva');

insert into t_dpse_empresa values(2210, 1020, 77288104710410, 'Promofarma',
'R. Rendeira', null, null, 11998732110, 'Beatriz Muniz');

insert into t_dpse_empresa values(389, 8819, 27193711094381, 'Extrafarma',
'Av. Imirim', null, null, 1198133014, 'Patricia Oliveira');

insert into t_dpse_empresa values(6639, 3220, 10377184019371, 'Bella Farma',
'Av. Conceição', null, 'bellafarma@gmail.com', 1190193338, 'Julia Santos');

insert into t_dpse_empresa values(5291, 1331, 83019443982105, 'Livia Yasuda Farmacia',
'R. Iturama', null, 'Liviayasuda@gmail.com', 11914822010, 'Luiz Fernando Martins');

insert into t_dpse_empresa values(3628, 4291, 71273917461947, 'Droga Ortiz',
'R. Tiers', null, null, 1196152391, 'Fernando Parente');

insert into t_dpse_empresa values(4180, 7193, 81038164839104, 'Farmais',
'R. Belém', null, null, 1198103846, 'Bianca Santos');

-- Tabela cliente
insert into t_dpse_cliente values(8391, 77291003718, 'Pedro Costa', 'R. Bassi'); 

insert into t_dpse_cliente values(1373, 28109471837, 'Rebaca de Oliveira',
'Av. Cmte. Antônio Paiva Sampaio');

insert into t_dpse_cliente values(6284, 17391037299, 'Rafael Santos', 'R. Diadema');

insert into t_dpse_cliente values(5318, 83173918473, 'Vivian Lima', 'R. Pirapozinho');

insert into t_dpse_cliente values(2216, 21722937472, 'Leonardo Vieira', 'R. Graciliano Ramos');

insert into t_dpse_cliente values(8274, 43817472184, 'Isabela Martins', 'R. Mateus García');

insert into t_dpse_cliente values(1173, 18336271938, 'Daniel Costa', 'Rua Cardeal Arcoverde');

insert into t_dpse_cliente values(2516, 19388183839, 'Talita Yumi', 'R. Jericó');

insert into t_dpse_cliente values(6118, 31373210184, 'jéssica Silva', 'R. Décio Reis');

insert into t_dpse_cliente values(7716, 19383383657, 'Fernando Costa', 'Av. Rangel Pestana');


-- Tabela pedido

insert into t_dpse_pedido values(3184, 8301, 8391, '02/04/2022', 'Novalgina 1g', 10.47);

insert into t_dpse_pedido values(7263, 6472, 1373, '21/08/2022', 'Dipirona 1g', 19.00);

insert into t_dpse_pedido values(5173, 1939, 6284, '15/10/2022', 'Dorflex 1g e Novalgina 1g', 29.47);

insert into t_dpse_pedido values(8173, 4291, 5318, '30/01/2022', 'Engov', 25.99);

insert into t_dpse_pedido values(8319, 2210, 2216, '28/12/2022', 'Sonrisal', 12.74);

insert into t_dpse_pedido values(5138, 389, 8274, '13/04/2022', 'Tylenol', 17.90);

insert into t_dpse_pedido values(9173, 6639, 1173, '26/07/2022', 'Lisador', 21.00);

insert into t_dpse_pedido values(6127, 5291, 2516, '01/08/2022', 'Toragesic', 23.89);

insert into t_dpse_pedido values(7139, 3628, 6118, '08/05/2022', 'Neosoro', 30.00);

insert into t_dpse_pedido values(2108, 4180, 7716, '20/03/2022', 'Losartana', 17.99);