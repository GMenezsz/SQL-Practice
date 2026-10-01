SELECT *
FROM Production.Product;
 
------- DESAFIO 1 --------

SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice >= 100;

-------- DESAFIO 2 -------

SELECT Name, Color
FROM Production.Product
WHERE Color IS NOT NULL;

-------- DESAFIO 3 -------

SELECT Name, DaysToManufacture
FROM Production.Product
WHERE DaysToManufacture > 0;

-------- DESAFIO 4 -------

SELECT count(DISTINCT Color) AS CoresDiferentes
FROM Production.Product;

-------- DESAFIO 5 -------

SELECT count(ProductID) AS ProdutosCorDefinida
FROM Production.Product
WHERE Color IS NOT NULL;

-------- DESAFIO 6 -------

SELECT count(*)
FROM Production.Product
WHERE FinishedGoodsFlag = 1;

-------- DESAFIO 7 -------

SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-------- DESAFIO 8 -------

SELECT TOP 10 Name, ListPrice
FROM Production.Product
WHERE ListPrice > 0
ORDER BY ListPrice ASC;

-------- DESAFIO 9 -------

SELECT
	Color, 
	count(*) AS ProdutoPorCor
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color;
 
 -------- DESAFIO 10 -------

 SELECT
	ProductLine,
	count(*) AS LinhaProdutos
FROM Production.Product
GROUP BY ProductLine;

 -------- DESAFIO 11 -------

SELECT 
	Color,
	AVG(ListPrice) AS PrecoMedio
FROM Production.Product
GROUP BY Color;

 -------- DESAFIO 12 -------

SELECT
	Color, 
	count(*) AS TotalProdutos
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
ORDER BY TotalProdutos DESC;

 -------- DESAFIO 13 -------

SELECT
	ProductLine,
	AVG(ListPrice) AS PrecoMedio
FROM Production.Product
GROUP BY ProductLine
ORDER BY PrecoMedio DESC;

 -------- DESAFIO 14 -------

 SELECT
	Color,
	count(Color) AS Qtd,
	AVG(ListPrice) AS PrecoMedio
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color
ORDER BY Qtd DESC;

 -------- DESAFIO 15 -------

SELECT
	TOP 1 Name,
	ListPrice
FROM Production.Product 
ORDER BY ListPrice DESC;

SELECT
	TOP 1 Name,
	ListPrice
FROM Production.Product
WHERE ListPrice > 0
ORDER BY ListPrice ASC
