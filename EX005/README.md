
# Prática de Consultas SQL (AdventureWorks)

Repositório criado para registrar minha evolução em SQL utilizando o banco de dados AdventureWorks.

## Conteúdos estudados

* SELECT
* DISTINCT
* WHERE
* LIKE (Coringas `%` e `_`)
* BETWEEN
* COUNT()
* Aliases (`AS`)

## Exercícios realizados

* Busca de pessoas com nomes iniciados por um padrão de texto (`LIKE 'ovi%'`)
* Filtragem de nomes que terminam com determinados caracteres (`LIKE '%to'`)
* Pesquisa por subcadeias de texto em qualquer posição (`LIKE '%essa%'`)
* Utilização do caractere coringa de tamanho fixo (`LIKE '%ro_'`)
* Contagem de produtos por valor mínimo com alias de coluna
* Contagem de pessoas por inicial do sobrenome
* Contagem de registros com valores únicos (`COUNT(DISTINCT)`)
* Listagem de valores únicos em colunas (`DISTINCT`)
* Contagem condicional com múltiplos filtros (`WHERE`, `AND`, `BETWEEN`)
* Busca textual e contagem em catálogos de produtos (`LIKE '%road%'`)

## Aprendizados

* Uso do operador `LIKE` com `%` para representar qualquer número de caracteres
* Uso do caractere `_` para representar exatamente um caractere curinga individual
* Aplicação da função `COUNT()` para agregação e contagem total de registros
* Combinação de `COUNT()` e `DISTINCT()` para contar apenas elementos não repetidos
* Renomeação visual de colunas de resultados usando aliases com `AS`
* Aplicação simultânea de múltiplos filtros usando operadores lógicos (`AND`) e de intervalo (`BETWEEN`)
