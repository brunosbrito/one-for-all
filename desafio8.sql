SELECT art.nome AS 'artista',
alb.nome AS 'album'
FROM `SpotifyClone`.artistas art
INNER JOIN `SpotifyClone`.albuns alb On alb.artista_id = art.id
WHERE art.nome = 'Elis Regina';
