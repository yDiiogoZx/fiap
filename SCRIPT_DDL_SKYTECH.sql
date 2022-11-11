/* GRUPO SKYTECH

RM94319 - DIOGO DE JESUS OLIVEIRA 
RM93112 - LUCIAYLA YUMI KAWAKAMI 
RM93427 - MAIKI CESAR FERREIRA LEITE 
RM93667 - PEDRO DE OLIVEIRA COSTA 
RM93993 - RAFAEL SANTOS M. COSTA */

DROP TABLE t_dpse_empresa CASCADE CONSTRAINTS;
DROP TABLE t_dpse_pedido CASCADE CONSTRAINTS;
DROP TABLE t_dpse_cliente cascade CONSTRAINTS;

create table t_dpse_empresa
(
    cd_empresa          number(4)       not null,
    cd_distribuidora    number(4)       not null,
    nr_cnpj             number(14)      not null,
    ds_razao_social     varchar2(100)   not null,
    ds_endereco         varchar2(100)   not null,
    ds_url              varchar2(256)   null,
    ds_email            varchar2(100)   null,
    nr_telefone         number(11)      not null,
    nm_contato          varchar2(50)    not null
);

alter table t_dpse_empresa
add constraint pk_dpse_empresa
primary key (cd_empresa);

create table t_dpse_pedido
(
    cd_pedido           number(4)       not null,
    cd_empresa          number(4)       not null,
    cd_cliente          number(4)       not null,
    dt_pedido           date            not null,
    ds_pedido           varchar2(100)   not null,
    vl_pedido           number(5,2)     not null
);

alter table t_dpse_pedido
add constraint pk_dpse_pedido
primary key (cd_pedido);


create table t_dpse_cliente
(
    cd_cliente          number(4)       not null,
    nr_cpf              number(11)      not null,
    nm_cliente          varchar2(100)   not null,
    ds_endereco         varchar2(100)   not null
);

alter table t_dpse_cliente
add constraint pk_dpse_cliente
primary key (cd_cliente);




-- Tabela pedido
ALTER TABLE t_dpse_pedido 
ADD CONSTRAINT fk_dpse_pedido_cliente
FOREIGN KEY (cd_cliente)
REFERENCES t_dpse_cliente (cd_cliente);

ALTER TABLE t_dpse_pedido 
ADD CONSTRAINT fk_dpse_pedido_empresa
FOREIGN KEY (cd_empresa)
REFERENCES t_dpse_empresa (cd_empresa);

-- Tabela empresa
ALTER TABLE t_dpse_empresa
ADD CONSTRAINT un_dpse_empresa_cnpj
UNIQUE (nr_cnpj);

-- Tabela cliente
ALTER TABLE t_dpse_cliente
ADD CONSTRAINT un_dpse_cliente_cpf
UNIQUE (nr_cpf);