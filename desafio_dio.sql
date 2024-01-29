-- 1
select Nome,
	Ano
from Filmes

-- 2
select Nome,
	Ano,
	Duracao
from Filmes
order by Ano asc

-- 3
select Nome,
	Ano,
	Duracao
from Filmes
Where Nome='De Volta para o Futuro' AND Ano='1985' AND Duracao='116'

-- 4
select Nome,
	Ano,
	Duracao
from Filmes
Where Ano='1997'

-- 5
select Nome,
	Ano,
	Duracao
from Filmes
Where Ano > '2000'

-- 6
select Nome,
	Ano,
	Duracao
from Filmes
Where Duracao BETWEEN 101 AND 150
ORDER BY Duracao ASC

-- 7
select Ano, count(Ano) AS Quantidade
FROM Filmes 
Group by Ano
order by Quantidade desc

-- 8
SELECT Atores.Id,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Atores.Genero
FROM Filmes
FULL JOIN Atores ON Atores.PrimeiroNome = Atores.UltimoNome 
WHERE Atores.Genero='M'

-- 9
SELECT Atores.Id,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	Atores.Genero
FROM Filmes
FULL JOIN Atores ON Atores.PrimeiroNome = Atores.UltimoNome 
WHERE Atores.Genero='F'
ORDER BY Atores.PrimeiroNome

-- 10
SELECT Nome, Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT Nome, Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor