SELECT
u.nome AS 'usuario',
COUNT(m.musica_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(m.duracao) / 60, 2) AS 'total_minutos'
FROM
SpotifyClone.historico h
INNER JOIN 
SpotifyClone.usuarios u ON h.usuario_id = u.id
INNER JOIN
SpotifyClone.musicas m ON h.musica_id = m.musica_id
GROUP BY u.nome
ORDER BY u.nome;
