/* QUESTÃO 1 */

SELECT DBO.Filmes.Nome, DBO.Filmes.Ano FROM DBO.Filmes;

/*QUESTÃO 2*/

SELECT DBO.Filmes.Nome, DBO.Filmes.Ano, DBO.Filmes.Duracao FROM DBO.Filmes
ORDER BY DBO.FILMES.Ano ASC;

/*QUESTÃO 3 */

SELECT DBO.Filmes.Nome, DBO.Filmes.Ano, DBO.Filmes.Duracao FROM DBO.Filmes
WHERE DBO.Filmes.Nome = 'De Volta para o Futuro';

/*QUESTÃO 4*/

SELECT DBO.Filmes.Nome, DBO.Filmes.Ano, DBO.Filmes.Duracao FROM DBO.Filmes
WHERE DBO.Filmes.Ano = 1997;

/* QUESTÃO 5 */
SELECT DBO.Filmes.Nome, DBO.Filmes.Ano, DBO.Filmes.Duracao FROM DBO.Filmes
WHERE  DBO.Filmes.Ano > 2000;

/* QUESTÃO 6 */

SELECT DBO.Filmes.Nome, DBO.Filmes.Ano, DBO.Filmes.Duracao FROM DBO.Filmes
WHERE DBO.Filmes.Duracao > 100
ORDER BY DBO.FILMES.Duracao ASC;

/* QUESTÃO 7*/

SELECT DBO.FILMES.Ano, COUNT(DBO.FILMES.Nome) AS Quantidade, SUM(DBO.FILMES.Duracao) AS duracao_total FROM DBO.FILMES
GROUP BY DBO.FILMES.Ano
ORDER BY duracao_total DESC;

/* QUESTÃO 8 */

SELECT * FROM DBO.Atores WHERE DBO.Atores.Genero = 'M';

/* QUESTÃO 9 */

SELECT * FROM DBO.Atores WHERE DBO.Atores.Genero = 'F'
ORDER BY DBO.Atores.PrimeiroNome;

/* QUESTÃO 10 */

SELECT DBO.Filmes.Nome, dbo.Generos.Genero from dbo.Filmes
INNER JOIN dbo.FilmesGenero on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
INNER JOIN dbo.Generos on dbo.FilmesGenero.IdGenero = dbo.Generos.Id;


/* QUESTÃO 11 */

SELECT DBO.Filmes.Nome, dbo.Generos.Genero from dbo.Filmes
INNER JOIN dbo.FilmesGenero on dbo.Filmes.Id = dbo.FilmesGenero.IdFilme
INNER JOIN dbo.Generos on dbo.FilmesGenero.IdGenero = dbo.Generos.Id
WHERE dbo.Generos.Genero = 'Mistério';

/* QUESTÃO 12 */

SELECT DBO.Filmes.Nome, dbo.Atores.PrimeiroNome, dbo.Atores.UltimoNome, dbo.ElencoFilme.Papel from dbo.Filmes
INNER JOIN dbo.ElencoFilme on dbo.Filmes.Id = dbo.ElencoFilme.IdFilme
INNER JOIN dbo.Atores on dbo.ElencoFilme.Id = dbo.Atores.Id;
