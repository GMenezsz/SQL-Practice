# Prática de Consultas SQL (AdventureWorks)

Repositório contendo scripts e consultas SQL desenvolvidos para prática de manipulação, filtragem, agregação e cruzamento de dados relacionais.

## 📁 Estrutura dos Exercícios

### Exercício 1
Foco em filtros básicos, funções de contagem e junção simples de tabelas (`INNER JOIN`).
* **Filtro por Sobrenome:** Seleção de pessoas com o sobrenome 'Walters' (`FirstName`, `LastName`).
* **Contagem Total:** Contagem de linhas na tabela de pessoas (`person.Person`).
* **Cargos Distintos:** Contagem de cargos únicos existentes na tabela de funcionários (`HumanResources.Employee`).
* **Cruzamento de Tabelas:** Junção entre dados pessoais (`person.Person`) e informações profissionais (`HumanResources.Employee`) utilizando o ID de identificação.

### Exercício 2
Foco em agregações avançadas, múltiplos cruzamentos (`joins`) e análise de métricas por grupo.
* **E-mails Únicos:** Contagem de endereços de e-mail distintos na base.
* **Consulta Multitabela:** Cruzamento entre três tabelas (`Person`, `Employee` e `EmailAddress`) para consolidar Nome, Cargo e E-mail de forma unificada.
* **Agrupamento por Cargo:** Contagem do total de funcionários agrupados por cada cargo específico (`GROUP BY`).

## 🛠️ Tecnologias Utilizadas
* SQL (Structured Query Language)
* Banco de Dados de Exemplo: **AdventureWorks**