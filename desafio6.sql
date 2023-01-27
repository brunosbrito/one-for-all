SELECT
MIN(p.valor) AS 'faturamento_minimo',
MAX(p.valor) AS 'faturamento_maximo',
ROUND(AVG(p.valor), 2) AS 'faturamento_medio',
SUM(p.valor) AS 'faturamento_total'
FROM 
SpotifyClone.usuarios u
INNER JOIN
SpotifyClone.planos p ON p.id = u.plano_id;
