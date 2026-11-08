
Exercícios de Consultas SQL - Banco AdventureWorks

 Conteúdo dos Exercícios

O script aborda os seguintes conceitos de consulta:

Uso de TOP e ORDER BY (ordenação e limitação de resultados)

Filtragem com o operador BETWEEN (e NOT BETWEEN)

Filtragem com o operador IN

 Descrição das Consultas

1. Top 10 Produtos Mais Caros (EX001)

Retorna os 10 produtos de maior valor na tabela de produtos, ordenados do preço mais alto para o mais baixo.

SELECT TOP 10 ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

2. Produtos com ID entre 1 e 4 (EX002)

Busca o ID, nome e código dos 4 primeiros produtos ordenados de forma crescente pelo ProductID.

SELECT TOP 4 ProductID, Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC;

3. Produtos Fora da Faixa de Preço (Uso do NOT BETWEEN)

Seleciona todos os produtos cujo preço não está entre $1000 e $1500.

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;

4. Funcionários Contratados em um Período (Uso do BETWEEN com Datas)

Filtra os funcionários contratados especificamente durante o ano de 2009 (entre 01/01/2009 e 01/01/2010), ordenando pela data de contratação.

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;

5. Busca de Pessoas por IDs Específicos (Uso do IN)

Recupera as informações das pessoas cujos IDs (BusinessEntityID) correspondem aos valores 2, 7 ou 13.

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13);

Banco de Dados: AdventureWorks (Schemas: Production, HumanResources, Person)
