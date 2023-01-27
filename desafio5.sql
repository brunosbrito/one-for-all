
SELECT m.nome AS 'cancao', COUNT(h.musica_id) AS 'reproducoes'
FROM `SpotifyClone`.musicas m
INNER JOIN `SpotifyClone`.historico h ON ( m.musica_id = h.musica_id )
GROUP BY m.nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;

