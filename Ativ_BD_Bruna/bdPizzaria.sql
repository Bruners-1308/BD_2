create database bdPizzaria;
use bdPizzaria;

create table tbCliente(
		idCliente int primary key auto_increment
        ,foneCliente varchar (10)
        ,endCliente varchar (80)
        ,nomeCliente varchar (40)
        );
        
create table tbPedido(
	idPedido int primary key auto_increment
    ,qtdPedido int
    ,saborPedido varchar (80)
    ,vlrPedido float
    ,idCliente int
    ,foreign key (idCliente) references tbCliente (idCliente)
    );
    
insert into tbCliente values (null, '3232-5577', 'Rua das Flores, 123', 'Maria');
insert into tbCliente values (null, '9955-2222', 'Av. Hum, 22', 'João');
insert into tbCliente values (null, '2244-8877', 'Rua Cinco, 5', 'José');

select*from tbCliente;

insert into tbPedido values (null, '1', 'Mussarela', '25,00', 1);
insert into tbPedido values (null, '2', 'Mussarela, Calabresa', '50', 2);
insert into tbPedido values (null, '1', 'Frango Catu', '30', 3);

select*from tbPedido;

delete from tbPedido where idPedido=2;