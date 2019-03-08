
/*Criando um banco de dados*/
create database bdClinica;

/*Utilizando o banco de dados criado*/
use bdClinica;

/*Criei primeiro a tabela médico para depois conseguir referenciar na tabela tbEspecMedico* /
/*Criando uma tabela  com chave primaria auto incremento*/
create table tbMedico( 
			idMed int primary key auto_increment  /*criado campo do tipo inteiro, chave primaria, com auto incremento*/
			,Nome varchar(40)  /*campo tipo texto, com capacidade de 40 caracteres*/
			, sexo varchar(40)
            ,crm varchar (40) 
            , formacao  varchar(40)
);



/*Criando uma tabela  com chave primaria auto incremento e ligando com a tabela tbMedico através da FK*/
create table tbEspecMedico( 
			idEspMed int primary key auto_increment  /*criado campo do tipo inteiro, chave primaria, com auto incremento*/
			,especialidade varchar(40)  /*campo tipo texto, com capacidade de 40 caracteres*/
			, idMed int
            ,foreign key (idMed) references tbMedico(idMed)
);


/*-----------------------------------------------------------------------------------*/


/*Inserindo dados na tabela tbMedico*/
insert into tbMedico values (null, 'Jose', 'masc', '456.872.445-5', 'USP');
insert into tbMedico values (null, 'Joao', 'masc', '456.878.796-5', 'Anhembi Morumbi');
insert into tbMedico values (null, 'Maria', 'fem', '547.824.254-2', 'Uninove');

/*Inserindo dados na tabela tbEspeMedico*/
insert into tbEspecMedico values(null, 'cardiologista', 1);
insert into tbEspecMedico values(null, 'geral', 2);
insert into tbEspecMedico values(null, 'pediatra', 3);
insert into tbEspecMedico values(null, 'geriatra', 2);

/*Selecionando os dados criados*/
select * from tbEspecMedico;
select * from tbMedico;

/*Antes de  excluir o médico com o ID 2 é necessário exlcuir a especialidade que está vinculada a ele*/
delete from tbEspecMedico where idMed= 2;
delete from tbMedico where idMed= 2;


