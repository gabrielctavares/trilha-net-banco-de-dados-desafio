-- 1
SELECT Nome, Ano FROM dbo.Filmes;

-- 2
SELECT Nome, Ano, Duracao FROM dbo.Filmes ORDER BY Ano;

-- 3
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT * FROM dbo.Filmes WHERE Ano = 1997;

-- 5
SELECT * FROM dbo.Filmes WHERE Ano > 2000;

-- 6
SELECT * FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7
SELECT Ano, COUNT(*) as Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 
SELECT * FROM dbo.Atores WHERE Genero = 'M';

-- 9 
SELECT * FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10
SELECT 
	f.Nome, 
	g.Genero 
FROM 
	dbo.FilmesGenero fg 
JOIN 
	dbo.Filmes f 
ON 
	fg.IdFilme = f.Id 
JOIN 
	dbo.Generos g 
on 
	fg.IdGenero = g.Id;

-- 11
-- Optei por colocar o Gênero = Mistério no JOIN mesmo.
SELECT 
	f.Nome, 
	g.Genero 
FROM 
	dbo.FilmesGenero fg 
JOIN 
	dbo.Filmes f 
ON 
	fg.IdFilme = f.Id 
JOIN 
	dbo.Generos g 
on 
	fg.IdGenero = g.Id AND g.Genero = 'Mistério'

-- 12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM 
	dbo.ElencoFilme ef 
JOIN 
	dbo.Filmes f 
ON 
	ef.IdFilme = f.Id 
JOIN 
	dbo.Atores a 
on 
	ef.IdAtor = a.Id;
	