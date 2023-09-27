/*Criar Banco De dados*/

create database bardobda;

/*Usar o banco de dados*/
use bardobda;


/*---------------------------------*/
CREATE TABLE Garcom (
   /*Criar um campo inteiro e chave primária auto_incrementent*/
   Id INT PRIMARY KEY auto_increment,
   Nome VARCHAR(80)
);

insert into garcom(nome)Values('Celso');
insert into garcom(nome)Values('Miqueias');
insert into garcom(nome)Values ('Artur');

select * from garcom;


   CREATE TABLE Mesa (
    ID INT PRIMARY KEY auto_increment,
    Localizacao NCHAR(2)
    
);

/*cinco fileiras: A,B,C,D,E*/
/* Em cada fileira existe 9 mesas*/

/*fileriaA*/

insert into Mesa(localizacao)values('a1');
insert into Mesa(localizacao)values('a2');
insert into Mesa(localizacao)values('a3');
insert into Mesa(localizacao)values('a4');
insert into Mesa(localizacao)values('a5');
insert into Mesa(localizacao)values('a6');
insert into Mesa(localizacao)values('a7');
insert into Mesa(localizacao)values('a8');
insert into Mesa(localizacao)values('a9');

/*fileira B*/
insert into Mesa(localizacao)values('b1');
insert into Mesa(localizacao)values('b2');
insert into Mesa(localizacao)values('b3');
insert into Mesa(localizacao)values('b3');
insert into Mesa(localizacao)values('b4');
insert into Mesa(localizacao)values('b5');
insert into Mesa(localizacao)values('b6');
insert into Mesa(localizacao)values('b7');
insert into Mesa(localizacao)values('b8');
insert into Mesa(localizacao)values('b9');

/*fileira C*/

insert into Mesa(localizacao)values('c1');
insert into Mesa(localizacao)values('c2');
insert into Mesa(localizacao)values('c3');
insert into Mesa(localizacao)values('c4');
insert into Mesa(localizacao)values('c5');
insert into Mesa(localizacao)values('c6');
insert into Mesa(localizacao)values('c7');
insert into Mesa(localizacao)values('c8');
insert into Mesa(localizacao)values('c9');

/*fileira D*/

insert into Mesa(localizacao)values('d1');
insert into Mesa(localizacao)values('d2');
insert into Mesa(localizacao)values('d3');
insert into Mesa(localizacao)values('d4');
insert into Mesa(localizacao)values('d5');
insert into Mesa(localizacao)values('d6');
insert into Mesa(localizacao)values('d7');
insert into Mesa(localizacao)values('d8');
insert into Mesa(localizacao)values('d9');

/*Fileira E*/

insert into Mesa(localizacao)values('e1');
insert into Mesa(localizacao)values('e2');
insert into Mesa(localizacao)values('e3');
insert into Mesa(localizacao)values('e4');
insert into Mesa(localizacao)values('e5');
insert into Mesa(localizacao)values('e6');
insert into Mesa(localizacao)values('e7');
insert into Mesa(localizacao)values('e8');
insert into Mesa(localizacao)values('e9');

select * from Mesa

select count(localizacao) from mesa;

CREATE TABLE Comanda (
    valor DECIMAL(5,2),
    Id INT PRIMARY KEY auto_increment,
    fechada TINYINT (1),
    estrela INT,
    fk_Mesa_id INT
);

 select * from comanda;



CREATE TABLE Relacionamento_1 (
    fk_Garcom_Id INT,
    fk_Comanda_Id INT
);
select * from comanda;
 /*Alter Table - altera a tabela*/
 /*add constraint -adicionar limitações (regras)*/
 /*comanda nome da tabela*/
 /*fk_comanda_2 - é o nome da constraint*/
 /*FOREING KEY - é a chave estrangeira*/
 /*fk_garcom_id - é o campo da tabela comando*/
 /**/
 
 
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_2
    FOREIGN KEY (fk_Garcom_id)
    REFERENCES Garcom (id)
    ON DELETE CASCADE;
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_3
    FOREIGN KEY (fk_Mesa_id)
    REFERENCES Mesa (id)
    ON DELETE CASCADE;
 
 insert into comanda(valor,fechada,estrela,fk_Garcom_id,fk_Mesa_id)
 values(976.77,false,2,2,8);
 
 select * from comanda;
 
 select * from garcom;
 
 select * from mesa;