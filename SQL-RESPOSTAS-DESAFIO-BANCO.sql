--QUERY 1: Buscar o nome e ano dos filmes
SELECT Filmes.Nome as Nome, Filmes.Ano as Ano FROM Filmes;

--QUERY 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Filmes.Nome as Nome, Filmes.Ano as Ano FROM Filmes ORDER BY Ano ASC;

--QUERY 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Nome = 'De Volta Para o Futuro';

--QUERY 4: Buscar os filmes lançados em 1997
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Ano = 1997;

--QUERY 5: Buscar os filmes lançados APÓS o ano 2000
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Ano > 2000;

--QUERY 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Duracao > 100 AND Filmes.Duracao < 150 ORDER BY Filmes.Duracao ASC

--QUERY 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Filmes.Ano, COUNT(*) AS 'QTD_FILMES_LANÇADOS' FROM Filmes GROUP BY Filmes.Ano ORDER BY MAX(Filmes.Duracao) DESC;

--QUERY 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Atores.PrimeiroNome, Atores.UltimoNome FROM Atores WHERE Atores.Genero = 'M';

--QUERY 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Atores.PrimeiroNome, Atores.UltimoNome FROM Atores WHERE Atores.Genero = 'F' ORDER BY Atores.PrimeiroNome;

--QUERY 10: Buscar o nome do filme e o gênero
SELECT f.Nome AS NomeDoFilme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--QUERY 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS NomeDoFilme, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

--QUERY 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f 
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;