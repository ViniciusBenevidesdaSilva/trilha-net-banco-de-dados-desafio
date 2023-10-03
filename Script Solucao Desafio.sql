-- 1
SELECT
	Nome
	,Ano
FROM 
	dbo.Filmes

-- 2
SELECT
	Nome
	,Ano
	,Duracao
FROM 
	dbo.Filmes
ORDER BY
	Ano asc

-- 3
SELECT
	Nome
	,Ano
	,Duracao
FROM 
	dbo.Filmes
WHERE
	Nome = 'De Volta para o Futuro'

-- 4
SELECT
	Nome
	,Ano
	,Duracao
FROM 
	dbo.Filmes
WHERE
	Ano = 1997

-- 5
SELECT
	Nome
	,Ano
	,Duracao
FROM 
	dbo.Filmes
WHERE
	Ano > 2000

-- 6
SELECT
	Nome
	,Ano
	,Duracao
FROM 
	dbo.Filmes
WHERE
	Duracao > 100 
	AND Duracao < 150
ORDER BY
	Duracao asc

-- 7
SELECT
	Ano
	,COUNT(*) AS Quantidade
FROM 
	dbo.Filmes
GROUP BY
	Ano
ORDER BY
	COUNT(*) desc

-- 8
SELECT
	PrimeiroNome
	,UltimoNome
	,Genero
FROM
	dbo.Atores
WHERE 
	Genero = 'M'

-- 9
SELECT
	PrimeiroNome
	,UltimoNome
	,Genero
FROM
	dbo.Atores
WHERE 
	Genero = 'F'
ORDER BY
	PrimeiroNome

-- 10
SELECT
	F.Nome
	,G.Genero
FROM
	dbo.Filmes F
INNER JOIN
	dbo.FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN 
	dbo.Generos G ON G.Id = FG.IdGenero

-- 11
SELECT
	F.Nome
	,G.Genero
FROM
	dbo.Filmes F
INNER JOIN
	dbo.FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN 
	dbo.Generos G ON G.Id = FG.IdGenero
WHERE
	G.Genero = 'Mistério'

-- 12
SELECT
	F.Nome
	,A.PrimeiroNome
	,A.UltimoNome
	,EF.Papel
FROM
	dbo.Filmes F
INNER JOIN
	dbo.ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN 
	dbo.Atores A ON A.Id = EF.IdAtor
