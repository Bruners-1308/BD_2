create database bdLoja;
use bdLoja;

create table tbCliente(
	idCliente int primary key auto_increment
    ,nomeCliente varchar (40)
    ,cpfCliente varchar (12)
    ,emailCliente varchar (80)
    );
    
    
create table tbCategoria(
	idCategoria int primary key auto_increment
    ,categoria varchar (50)
    );
    
create table tbProduto (
	idProduto int primary key auto_increment
    ,idCategoria int
    ,foreign key (idCategoria) references tbCategoria (idCategoria)
    ,produto varchar (100)
    ,valor varchar (50)    
    );
    
create table tbPedido(
	idPedido int primary key auto_increment
    ,dataPedido date
    ,idCliente int
    ,foreign key (idCliente) references tbCliente (idCliente)
    );
    
create table tbItemPedido(
	idItemPedido int primary key auto_increment
    ,idPedido int
    ,foreign key (idPedido) references tbPedido(idPedido)
    ,idProduto int
    ,foreign key (idProduto) references tbProduto (idProduto)
    ,qtdProduto int
    );

insert into tbCliente values (null, 'Bruna','386968778-96','bruna.mirandap@gmail.com');
insert into tbCliente values (null, 'Livia','328968458-28','livia.mirandap@gmail.com');
insert into tbCliente values (null, 'Maria das Graças','464355576-91','maria.mirandap@gmail.com');
insert into tbCliente values (null, 'Maria Alice','255315968-17','maria.gf@gmail.com');
insert into tbCliente values (null, 'Quintino','027013988-96','quintino.p@gmail.com');

select*from tbCliente;

insert into tbCategoria values (null, 'vestuário feminino');
insert into tbCategoria values (null, 'vestuário masculino');
insert into tbCategoria values (null, 'moda praia');
insert into tbCategoria values (null, 'moda íntima');
insert into tbCategoria values (null, 'vestuário infantil');

select*from tbCategoria;

insert into tbProduto values (null, 1, 'Calça Jeans TAM 42', 'R$ 40,00');
insert into tbProduto values (null, 2, 'Camisa Social', 'R$ 55,00');
insert into tbProduto values (null, 3, 'Biquini Cores', 'R$ 120,00');
insert into tbProduto values (null, 4, 'Kit calcinhas', 'R$ 70,00');
insert into tbProduto values (null, 5, 'Conjunto pepa', 'R$ 35,00');

select*from tbProduto;

insert into tbPedido values (null,'2019-03-21',1);
insert into tbPedido values (null,'2019-03-20',2);
insert into tbPedido values (null,'2019-03-19',3);
insert into tbPedido values (null,'2019-03-20',4);
insert into tbPedido values (null,'2019-03-22',5);

select*from tbPedido;

insert into tbItemPedido values (null, 1,1,'2');
insert into tbItemPedido values (null, 2,2,'3');
insert into tbItemPedido values (null, 3,3,'1');
insert into tbItemPedido values (null, 4,4,'5');
insert into tbItemPedido values (null, 5,5,'4');

select*from tbItemPedido;