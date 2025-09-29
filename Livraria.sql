-- Criar banco de dados
create database livraria;

-- Usar o banco
use livraria;

-- Criação de tabela
create table produtos (
	id int primary key,
    nome_produto varchar(50) not null,
    descricao varchar(50),
    preco_unitario float,
    quantidade_estoque int
);

-- Inserção de dados
INSERT INTO produtos VALUES 
(1, 'O pequeno principe', 'Livro Infantil', 26.26, 35),
(2, 'Coraline', 'Livro Infanto Juvenil', 69.90, 45),
(3, 'Harry Potter e a Pedra Filosofal', 'Livro Infanto Juvenil', 35.08, 31),
(4, 'Azul Quase Transparente', 'Ficção Literária Literatura e Ficção', 74.90, 60),
(5, 'Forward', 'Ficção Científica', 55.01, 45);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE quantidade_estoque < 10;

UPDATE produtos SET quantidade_estoque = 10 WHERE id = 3;
 
-- Desativação SQL_SAFE_UPDATES temporariamente para permitir deleção sem WHERE com chave primária
SET SQL_SAFE_UPDATES=0;

DELETE FROM produtos WHERE quantidade_estoque = 45;

SELECT * FROM produtos ORDER BY preco_unitario DESC;
