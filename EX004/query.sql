-- EX001 Pegando os 10 produtos mais caros
SELECT TOP 10 ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice desc;

-- EX002 Obtendo o nome e número do produto dos produtos que tem o ProductID entre 1 e 4.
SELECT TOP 4 ProductID, Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc;

-- Between
-- Selecionando produtos cujo o preço não esteja na faixa de 1000 e 1500
SELECT *
FROM Production.Product
WHERE listPrice NOT between 1000 and 1500;

-- Seleciona todos os funcionários que foram contratados entre a data selecionada
SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01'
ORDER BY HireDate;

-- Busca os dados das pessoas com os IDs 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);