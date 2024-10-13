
-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes 



-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano



-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'



-- 4 - Buscar os filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = '1997'



-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000



-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao



--  7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC



-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores
WHERE Genero = 'M'



-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome



-- 10 - Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero
FROM FilmesGenero fg
JOIN Filmes f ON fg.IdFilme = f.Id
JOIN Generos g ON fg.IdGenero = g.Id;



-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT f.Nome, g.Genero
FROM FilmesGenero fg
JOIN Filmes f  ON fg.IdFilme = f.Id
JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero ='Mist�rio';



-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
JOIN Filmes f ON ef.IdFilme = f.Id
JOIN Atores a ON ef.IdAtor = a.Id;