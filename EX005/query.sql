-- Consultas com LIKE
-- Seleciona todas as colunas das pessoas cujo primeiro nome COMEÇA com 'ovi'
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%';

-- Seleciona primeiro e último nome das pessoas cujo sobrenome TERMINA com 'to'
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '%to';

-- Seleciona nome e sobrenome de quem possui o trecho 'essa' em QUALQUER posição do primeiro nome
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE '%essa%';

-- Seleciona todas as colunas de quem tem o primeiro nome terminando com 'ro' 
-- seguido obrigatoriamente de exatamente mais um caractere (_)
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_';

-- Conta quantos produtos possuem o preço de lista maior que 1500
SELECT count(ListPrice) as QTD_produtos_cadastrado
FROM Production.Product
WHERE ListPrice > 1500;

-- EX002: Conta quantas pessoas possuem o sobrenome iniciando com a letra 'p'
SELECT count(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%';

-- EX003: Retorna o número total de cidades únicas (descartando repetições) na tabela de endereços
SELECT count(distinct(city))
FROM Person.Address;

-- EX004: Lista os nomes de todas as cidades cadastradas, removendo as duplicatas do resultado
SELECT distinct(city)
FROM Person.Address;

-- EX005: Conta o total de produtos que são da cor vermelha E possuem preço entre 500 e 1000
SELECT count(*)
FROM Production.Product
WHERE color = 'red' AND ListPrice BETWEEN 500 AND 1000;

-- EX006: Conta quantos produtos possuem a palavra 'road' em qualquer parte do nome
SELECT count(*)
FROM Production.Product
WHERE Name LIKE '%road%';