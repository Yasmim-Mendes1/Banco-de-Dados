create database livraria;

use livraria;

create table livros (
  livro varchar (100),
  autor varchar (100),
  sexo_autor char (1),
  paginas varchar (10),
  editora varchar (30),
  valor float (10, 2),
  uf char (2),
  ano int (4)
);

use livraria;

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Cavaleiro Real', 'Ana Claudia', 'F', '465', 'Atlas', 49.90, 'RJ', 2009);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('SQL para leigos', 'Joao Nunes', 'M', '450', 'Addison', 98.00, ' SP', 2018);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Receitas Caseiras', 'Celia tavares', 'F', '210', 'Atlas', 45.00, 'RJ', 2008);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano)
values ('Pessoas Efetivas', 'Eduardo Santos', 'M', '390', 'Beta', 78.99, 'RJ', 2018);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Habitos Saudaveis', 'Eduardo Santos', 'M', '630', 'Beta', 150.98, 'RJ', 2019);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('A Casa Marrom', 'Hermes Macedo', 'M', '250', 'Bubba', 60.00, 'MG', 2016);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Estacio Querido', 'Geraldo Francisco', 'M', '310', 'Insignia', 100.00, 'ES', 2015);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Para sempre amigas', 'Leda Silva', 'F', '510', 'Insignia', 78.98, 'ES', 2011);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('Copas Inesqueciveis', 'Marco Alcantara', 'M', '200', 'Larson', 130.98, 'RS', 2018);

insert into livros (livro, autor, sexo_autor, paginas, editora, valor, uf, ano) 
values ('O poder da mente', 'Clara Mafra', 'F', '120', 'Continental', 56.58, 'SP', 2017);


/* 1- Trazer todos os dados */
show * from livros;

/* 2- Trazer nome do livro e nome da editora */
select livro, editora 
from livros;

/* 3- Trazer nome do livro e a uf dos livros publicados por autores do sexo masculino */
select livro, uf 
from livros 
where sexo_autor = 'M';

/* 4- Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */
select livro, paginas 
from livros 
where sexo_autor = 'F';

/* 5- Trazer os valores dos livros das editoras de São Paulo */
select valor 
from livros
where uf = 'SP';

/* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro */
select autor 
from livros 
where sexo_autor = 'M', uf = 'SP' || uf = 'RJ';