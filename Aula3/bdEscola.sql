create database bdEscola;
use bdEscola;

create table tbCategoria(
	idCategoria int primary key auto_increment
    , titCategoria varchar (40)
    );
create table tbCurso(
	idCurso int primary key auto_increment
    , titCurso varchar (40)
    , idCategoria int
    , foreign key (idCategoria) references tbCategoria (idCategoria)
    );
    
insert into tbCategoria values (null, 'Desenvolvimento Web');
insert into tbCategoria values (null, 'Música');
insert into tbCategoria values (null, 'Cálculo');

insert into tbCurso values (null, 'Matemática', 3);
insert into tbCurso values (null, 'Contabilidade', 3);
insert into tbCurso values (null, 'Estatistica', 3);
insert into tbCurso values (null, 'PHP', 1);
insert into tbCurso values (null, 'CSS', 1);
insert into tbCurso values (null, 'HTML', 1);
insert into tbCurso values (null, 'Guitarra', 2);
insert into tbCurso values (null, 'Bateria', 2);
insert into tbCurso values (null, 'Piano', 2);

select * from tbCurso;

delete from tbCurso where idCurso = 3;