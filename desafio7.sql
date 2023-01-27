SELECT art.nome AS 'artista',
alb.nome AS 'album',
COUNT(s.artista_id) AS 'seguidores'
FROM `SpotifyClone`.artistas art
INNER JOIN `SpotifyClone`.albuns alb ON alb.artista_id = art.id
INNER JOIN `SpotifyClone`.seguidores s ON s.artista_id = art.id
GROUP BY art.nome, alb.nome
ORDER BY seguidores DESC, art.nome, alb.nome;
