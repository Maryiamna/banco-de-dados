use biblioteca;

select * from emprestimo;

desc livro;
select titulo, ano_publicacao from livro;

select titulo as 'Título', ano_publicacao as 'Ano publicação'
from livro limit 3;

select titulo as 'Título', ano_publicacao as 'Ano publicação'
from livro order by ano_publicacao desc;

-- selecionar os nomes e respectivas nacionalidades dos autores 
-- ordenados pela nacionalidade em ordem alfabética

desc autor;
select nome, nacionalidade from autor
order by nacionalidade asc;

select titulo, ano_publicacao from livro where ano_publicacao > 1990
and ano_publicacao < 2000;

update autor set nacionalidade='Britânica' where id_autor=8;
select * from autor where nacionalidade = 'britânica' or nacionalidade = 'britânico';

-- selecionar endereços dos estados de São Paulo, Rio de Janeiro e Sergipe
select * from endereco where estado in ('SP', 'RJ', 'SE');

select distinct estado from endereco;

select * from emprestimo;
update emprestimo set data_devolucao = (select now()) where id_emprestimo = 7;

select data_devolucao, date(data_devolucao) from emprestimo;

select * from livro where ano_publicacao between 2000 and 2010;

select * from livro where titulo like 'A%';

select * from usuario where id_endereco is not null;

select titulo from livro where genero = 'Ficção' or genero = 'Romance';
select titulo from livro where genero in ('Ficção', 'Romance');

select titulo from livro where (genero = 'Ficção' or genero = 'Fantasia') and (ano_publicacao between 1900 and 1998);

select nome from autor order by nome asc;


-- sub select: é um select dentro do outro, principalmente para pegar informaçoes de tabelas distintas
select id_autor, nome from autor where id_autor in (
select distinct id_autor from livro where ano_publicacao between 2000 and 2010);

select * from emprestimo order by data_emprestimo desc limit 10;

select * from emprestimo where id_usuario in (
select id_usuario from usuario where nome like 'M%');

select * from emprestimo where year(data_emprestimo) = 2023;

select * from emprestimo where date(data_emprestimo) >= '2023-05-31' and date(data_emprestimo) <= '2024-04-30';
select * from emprestimo where (year(data_emprestimo) = 2023 and month(data_emprestimo) >= 05) or (year(data_emprestimo) = 2024 and month(data_emprestimo) >= 04);

select data_emprestimo, date_add(data_emprestimo, interval 2 day) from emprestimo;
select data_emprestimo, date_sub(data_emprestimo, interval 2 day) from emprestimo;

insert into emprestimo values (100, 2, 1, now(), (select date_add(now(), interval 1 month)));