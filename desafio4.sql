SELECT u.nome AS 'usuario',
IF(YEAR(MAX(h.historico_data)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM 
SpotifyClone.historico AS h
INNER JOIN 
SpotifyClone.usuarios AS u ON u.id = h.usuario_id
GROUP BY u.nome
ORDER BY u.nome; 
