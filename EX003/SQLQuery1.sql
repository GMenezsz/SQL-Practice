-- Exibe todas as colunas e registros da tabela de pessoas
SELECT *
FROM Person.Person;


-- Lista funcionários com nome, cargo, telefone e e-mail
SELECT
    p.FirstName,
    p.LastName,
    f.JobTitle,
    t.PhoneNumber,
    e.EmailAddress

FROM Person.Person AS p

-- Junta a tabela de telefones
INNER JOIN Person.PersonPhone AS t
    ON p.BusinessEntityID = t.BusinessEntityID

-- Junta a tabela de e-mails
INNER JOIN Person.EmailAddress AS e
    ON p.BusinessEntityID = e.BusinessEntityID

-- Junta a tabela de funcionários para obter o cargo
INNER JOIN HumanResources.Employee AS f
    ON p.BusinessEntityID = f.BusinessEntityID;


-- Conta quantos funcionários existem em cada cargo
SELECT
    JobTitle,
    COUNT(*) AS QtdFuncionarios
FROM HumanResources.Employee

-- Agrupa os funcionários pelo cargo
GROUP BY JobTitle

-- Exibe os cargos com mais funcionários primeiro
ORDER BY QtdFuncionarios DESC;


-- Exibe todas as colunas da tabela de vendedores
SELECT *
FROM Sales.SalesPerson;


-- Lista vendedores com nome, cargo e vendas do último ano
SELECT
    p.FirstName,
    p.LastName,
    f.JobTitle,
    s.SalesLastYear
FROM Person.Person AS p

-- Junta a tabela de funcionários
INNER JOIN HumanResources.Employee AS f
    ON p.BusinessEntityID = f.BusinessEntityID

-- Junta a tabela de vendedores
INNER JOIN Sales.SalesPerson AS s
    ON p.BusinessEntityID = s.BusinessEntityID

-- Ordena do maior valor de vendas para o menor
ORDER BY s.SalesLastYear DESC;


-- Estatísticas de vendas do último ano
SELECT
    MAX(SalesLastYear) AS MaiorVenda, -- Maior valor encontrado
    MIN(SalesLastYear) AS MenorVenda, -- Menor valor encontrado
    AVG(SalesLastYear) AS MediaVenda  -- Média das vendas
FROM Sales.SalesPerson

-- Ignora vendedores que tiveram vendas iguais a zero
WHERE SalesLastYear > 0;