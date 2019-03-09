create database bdPizza;
use bdPizza;
create table tbPedido(
	idPedido int primary key auto_increment
    ,titPedido varchar (40)
    ,vlrPedido int
    );
    create table tbCliente(
		idCliente int primary key auto_increment
        ,foneCliente varchar (10)
        ,endCliente varchar (80)
        ,nomeCliente varchar (40)
        , idPedido int
        , foreign key (idPedido) references tbPedido (idPedido)
        );
        
	drop table tbCliente;
    drop table tbPedido;
    
    create table tbPedido(
	idPedido int primary key auto_increment
    ,qtdPedido int
    ,saborPedido varchar (40)
    ,vlrPedido float
    );
  
  drop table tbPedido;
  
   create table tbCliente(
		idCliente int primary key auto_increment
        ,foneCliente varchar (10)
        ,endCliente varchar (80)
        ,nomeCliente varchar (40)
        );
        
	create table tbPedido(
	idPedido int primary key auto_increment
    ,qtdPedido int
    ,saborPedido varchar (40)
    ,vlrPedido float
    ,idCliente int
    ,foreign key (idCliente) references tbPedido (idPedido)
    );
    
    insert into tbPedido (saborPedido) values ('A moda') ;
    insert into tbPedido (saborPedido) values ('Mussarela');
    insert into tbPedido (saborPedido) values ('Calabresa');
    insert into tbPedido (saborPedido) values ('Frango Catu');
    
    select*from tbPedido;
    
    delete from tbPedido where idPedido=1;
	delete from tbPedido where idPedido=2;
    delete from tbPedido where idPedido=3;
    delete from tbPedido where idPedido=4;
    
	insert into tbPedido values (null, '2', '1 À moda, 1 Mussarela', '88,00', null);
     delete from tbPedido where idPedido=5;
     
	insert into tbCliente values (null, '3232-5577', 'Rua das Flores, 123', 'Maria');
    insert into tbCliente values (null, '9955-2222', 'Av. Hum, 22', 'João');
    insert into tbCliente values (null, '2244-8877', 'Rua Cinco, 5', 'José');
    
    select*from tbCliente;
    
    