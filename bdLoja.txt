create database bdLoja;
use	bdLoja;

create table tbEstado (
idEstado int primary key auto_increment
,UF varchar (2)
);

create table tbCliente (
idCliente int primary key auto_increment
,nomeCliente varchar (40)
,cpfCliente varchar (40)
,idEstado int
,foreign key (idEstado) references tbEstado (idEstado)
);

create table tbCategoria (
idCategoria int primary key auto_increment
,Categoria varchar (40)
);

create table tbProduto (
idProduto int primary key auto_increment
,idCategoria int
,foreign key (idCategoria) references tbCategoria (idCategoria)
,Produto varchar (40)
,Valor int
);

create table tbPedido (
idPedido int primary key auto_increment
,dataPedido date
,idCliente int
,foreign key (idCliente) references tbCliente (idCliente)
);

create table tbItemPedido (
idItemPedido int primary key auto_increment
,idPedido int
,foreign key (idPedido) references tbPedido (idPedido)
,idProduto int
,foreign key (idProduto) references tbProduto (idProduto)
,qtdProduto int
);

insert into tbEstado values (null, 'SP');
insert into tbEstado values (null, 'RJ');
insert into tbEstado values (null, 'MG');
insert into tbEstado values (null, 'ES');

insert into tbCliente values (null, 'Bruna', '386.968.778-96', 3);
insert into tbCliente values (null, 'Maria', '464.355.576-91', 3);
insert into tbCliente values (null, 'Quintino', '047.013.988-96', 3);
insert into tbCliente values (null, 'Livia', '999.999.013-25', 1);

insert into tbCategoria values (null, 'Camisetas');
insert into tbCategoria values (null, 'Calças');
insert into tbCategoria values (null, 'Vestidos');
insert into tbCategoria values (null, 'Calçados');

alter table tbProduto change Valor Valor varchar (40);

insert into tbProduto values (null, 1, 'Masculinas', '30,00');
insert into tbProduto values (null, 2, 'Jeans', '50,00');
insert into tbProduto values (null, 3, 'Verão','35,00');
insert into tbProduto values (null, 4, 'Infantil', '55,00');

insert into tbPedido values (null, '2019-04-20', 1);
insert into tbPedido values (null, '2019-04-20', 2);
insert into tbPedido values (null, '2019-04-20', 3);
insert into tbPedido values (null, '2019-04-20', 4);

insert into tbItemPedido values (null, 1, 1, '3');
insert into tbItemPedido values (null, 2, 2, '1');
insert into tbItemPedido values (null, 3, 3, '2');
insert into tbItemPedido values (null, 4, 4, '1');

