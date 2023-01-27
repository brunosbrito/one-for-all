SELECT 
COUNT(h.usuario_id) AS 'quantidade_musicas_no_historico'
FROM 
SpotifyClone.usuarios u
INNER JOIN
SpotifyClone.historico h ON h.usuario_id = u.id
WHERE u.nome = 'Barbara Liskov';
