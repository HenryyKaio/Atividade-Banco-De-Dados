create database cinema;
use cinema;
create table Ator(
CodAtor varchar(3) primary key,
NomeArt varchar(40) not null,
NomeReal varchar(40) not null,
Nacionalidade varchar(20) not null,
Sexo char(1) not null,
Idade int(2) not null,
IndOscar int(2)
);

alter table Ator add oscar int(2);

create table Filme(
CodFilme varchar(3) primary key,
NomeFilme varchar(40) not null,
AnoFilme int(4) not null,
Orcamento int(15) not null,
Tempo int(2) not null
);

create table Personagem(
CodFilme varchar(3) not null,
CodAtor varchar(3) not null,
Personagem varchar(40) not null,
CachePersonagem int(15) not null,
primary key(CodFilme, CodAtor),
foreign key(CodFilme) references Filme(CodFilme) on delete cascade on update cascade,
foreign key(CodAtor) references Ator(CodAtor) on delete cascade on update cascade
);

insert into Ator values('a1', 'Demi Moore', 'Maria da Silva', 'USA', 'F', 32, null, null);
insert into Ator values('a10', 'Willian Hurt', 'Willian Ernst Hurt', 'USA', 'M', 45, 2, 1);
insert into Ator values('a11', 'George Clooney', 'George Costa Smith', 'USA', 'M', 37, 1, null);
insert into Ator values('a12', 'Jennifer Lopez', 'Maria Conchita Lopez', 'México', 'F', 32, null, null);
insert into Ator values('a13', 'Antony Hopkins', 'Antony Richard Hopcroft', 'USA', 'M', 65, 6, 3);
insert into Ator values('a14', 'Antônio Banderas', 'Antônio Augusto Banderas', 'Espanha', 'M', 34, null, null);
insert into Ator values('a15', 'Tom Hanks', 'Antony Hanks', 'USA', 'M', 45, 1, 1);
insert into Ator values('a16', 'Matt Damon', 'Mattew Louis Damon', 'USA', 'M', 32, 1, 1);
insert into Ator values('a17', 'Jim Carrey', 'James Carrey', 'USA', 'M', 40, null, null);
insert into Ator values('a18', 'Nicole Kidman', 'Susan West', 'Austrália', 'F', 33, null, null);
insert into Ator values('a19', 'Val Kilmer', 'Valerio Soza Kilmer', 'Porto Rico', 'M', 40, null, null);
insert into Ator values('a2', 'Brad Pitt', 'João Paulo', 'USA', 'M', 28, 1, null);
insert into Ator Values('a20', 'Cameron Diaz', 'Esperanza Diaz', 'Costa Rica', 'F', 29, null, null);
insert into Ator values('a21', 'Holly Hunter', 'Susan Richards', 'USA', 'F', 33, 1, 1);
insert into Ator values('a22', 'Richard Gere', 'Richard Gere', 'USA', 'M', 34, null, null);
insert into Ator values('a3', 'Jessica Lange', 'Jessica Lange', 'USA', 'F', 42, 4, 2);
insert into Ator values('a4', 'Dustin Hoffman', 'Dustin Hoffman', 'USA', 'M', 36, 2, null);
insert into Ator values('a5', 'Sônia Braga', 'Sônia Braga', 'Brasil', 'F', 45, null, null);
insert into Ator values('a6', 'Samuel Jackson', 'Samuel L. Jackson', 'USA', 'M', 60, null, null);
insert into Ator values('a7', 'Sandra Bullock', 'Sandra Bullock', 'USA', 'F', 30, 2, null);
insert into Ator values('a8', 'Harry Cornick Jr.', 'Harry Cornick Jr.', 'USA', 'M', 40, null, null);
insert into Ator values('a9', 'Wesley Snipes', 'Wesley Snipes', 'USA', 'M', 31, 1, null);


insert into Filme values ('f1', 'A jurada', 1996, 1000000, 18);
insert into Filme values ('f10', 'Cidade das sombras', 1997, 10000000, 7);
insert into Filme values ('f11', 'Irresistível Paixão', 1998, 10000000, 10);
insert into Filme values ('f12', 'A Máscara do zorro', 1998, 11000000, 11);
insert into Filme values ('f13', 'Quem vai ficar com Marry?', 1997, 6000000, 8);
insert into Filme values ('f14', 'O resgate do soldado Ryan', 1997, 10000000, 7);
insert into Filme values ('f15', 'O show de Truman', 1998, 10000000, 14);
insert into Filme values ('f16', 'Batman, o filme', 1995, 10000000, 9);
insert into Filme values ('f17', 'Filadélfia', 1996, 10000000, 6);
insert into Filme values ('f18', 'O mascára', 1995, 6000000, 7);
insert into Filme values ('f19', 'O beijo da mulher aranha', 1990,8000000, 24);
insert into Filme values ('f2', 'A letra escarlate', 1995, 10000000, 24);
insert into Filme values ('f20', 'O pacificador', 1997, 10000000, 15);
insert into Filme values ('f21', 'Ace Aventura', 1995, 7000000, 12);
insert into Filme values ('f22', 'Chaplin', 1993, 8000000, 14);
insert into Filme values ('f23', 'Batman e Robin', 1997, 10000000, 20);
insert into Filme values ('f24', 'Strip Tease', 1996, 7000000, 12);
insert into Filme values ('f25', 'Passageiro 57', 1993, 200000000, 15);
insert into Filme values ('f26', 'Forrest Gump', 1996, 90000000, 15);
insert into Filme values ('f3' , 'Seven', 1995, 15000000, 20);
insert into Filme values ('f4' , 'Tootsie', 1982, 5000000, 16);
insert into Filme values('f5', 'Tieta', 1995, 2000000, 18);
insert into Filme values('f6', 'Código de Violência', 1997, 10000000, 15);
insert into Filme values('f7', 'Quando o Amor Acontece', 1998, 5000000, 12);
insert into Filme values('f8', 'A Vingança de Bette', 1998, 10000000, 9);
insert into Filme values('f9', 'Blade, o Caçador de Vampiros' , 1998 ,100000000 ,18);

insert into Personagem VALUES('f1', 'a1', 'Mary', 300000);
insert into Personagem VALUES('f10', 'a10', 'Columbo', 3000000);
insert into Personagem VALUES('f11', 'a11', 'Johnny', 800000);
insert into Personagem VALUES('f11', 'a12', 'Holly', 1000000);
insert into Personagem VALUES('f12', 'a13', 'Diego', 5000000);
insert into Personagem VALUES('f12', 'a14', 'Pancho', 8000000);
insert into Personagem VALUES('f13', 'a16', 'Roger', 4000000);
insert into Personagem VALUES('f13', 'a20', 'Mary', 5000000);
insert into Personagem VALUES('f14', 'a15', 'Roberts', 10000000);
insert into Personagem VALUES('f14', 'a16', 'Edward', 2000000);
insert into Personagem VALUES('f15', 'a17', 'Truman', 12000000);
insert into Personagem VALUES('f16', 'a17', 'Charade', 5000000);
insert into Personagem VALUES('f16', 'a18', 'Betty', 7000000);
insert into Personagem VALUES('f16', 'a19', 'Bruce', 8000000);
insert into Personagem VALUES('f17', 'a14', 'Bobby', 4000000);
insert into Personagem VALUES('f17', 'a15', 'Bill', 6000000);
insert into Personagem VALUES('f18', 'a17', 'Mascara', 10000000);
insert into Personagem VALUES('f18', 'a21', 'Sammy', 2000000);
insert into Personagem VALUES('f19', 'a10', 'Molina', 2000000);
insert into Personagem VALUES('f19', 'a5', 'Aranha', 80000);
insert into Personagem VALUES('f2', 'a1', 'Sandy', 50000);
insert into Personagem VALUES('f20', 'a11', 'George', 14000000);
insert into Personagem VALUES('f20', 'a18', 'Mary', 5000000);
insert into Personagem VALUES('f21', 'a21', 'Lola', 1000000);
insert into Personagem VALUES('f22', 'a8', 'Chaplin', 3000000);
insert into Personagem VALUES('f23', 'a11', 'Bruce', 10000000);
insert into Personagem VALUES('f24', 'a1', 'Annie', 18000000);
insert into Personagem VALUES('f25', 'a9', 'James', 14000000);
insert into Personagem VALUES('f26', 'a15', 'Forest', 20000000);
insert into Personagem VALUES('f3', 'a2', 'John', 50000);
insert into Personagem VALUES('f4', 'a3', 'Mary', 1000000);
insert into Personagem VALUES('f4', 'a4', 'Tootsie', 2000000);
insert into Personagem VALUES('f5', 'a10', 'Nacib', 2500000);
insert into Personagem VALUES('f5', 'a5', 'Tieta', 50000);
insert into Personagem VALUES('f6', 'a6', 'Robinson', 3000000);
insert into Personagem VALUES('f7', 'a7', 'Suzy', 3000000);
insert into Personagem VALUES('f7', 'a8', 'Bill', 5000000);
insert into Personagem VALUES('f8', 'a3', 'Bette', 3000000);
insert into Personagem VALUES('f9', 'a9', 'Blade', 100000000);



