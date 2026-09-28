--------------------- EXERCÍCIO 1 -----------------------

-- Selecionando todas as pessoas com sobrenome 'Walters'
SELECT FirstName,LastName
FROM person.Person
WHERE LastName = 'Walters';

-- Quantas linhas existem na tabela.
SELECT count(*)
FROM person.Person;

-- Quantos cargos diferentes existem.
SELECT count(DISTINCT JobTitle)
FROM HumanResources.Employee;

-- Cruzamento de tabelas
SELECT
p.FirstName,
p.LastName,
e.JobTitle
FROM person.Person AS p
INNER JOIN HumanResources.Employee AS e
ON p.BusinessEntityID = e.BusinessEntityID;

--------------------- EXERCÍCIO 2 -----------------------

-- Quantos emails diferentes existem.
SELECT count(DISTINCT EmailAddress) AS QtdEmails
FROM person.EmailAddress;

SELECT 
p.FirstName,
p.LastName,
h.JobTitle,
e.EmailAddress
FROM person.Person AS p
INNER JOIN HumanResources.Employee AS h
	ON p.BusinessEntityID = h.BusinessEntityID 
INNER JOIN Person.EmailAddress AS e
	ON p.BusinessEntityID = e.BusinessEntityID;

-- Total de funcionários por cargo.
SELECT
JobTitle,
COUNT(*) AS TotalFuncionarios
FROM HumanResources.Employee
GROUP BY JobTitle;
