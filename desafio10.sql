SELECT m.nome AS 'nome',
COUNT(m.musica_id) AS 'reproducoes'
FROM 
SpotifyClone.usuarios u
INNER JOIN
SpotifyClone.planos p ON u.plano_id = p.id AND (p.nome = 'gratuito' OR p.nome = 'pessoal')
INNER JOIN
SpotifyClone.historico h ON h.usuario_id = u.id
INNER JOIN 
SpotifyClone.musicas m ON m.musica_id = h.musica_id
GROUP BY m.nome
ORDER BY m.nome;
