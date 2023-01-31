SELECT U.usuario AS usuario, 
COUNT(H.musica_id) AS qt_de_musicas_ouvidas,
SUM(ROUND(M.duracao_segundos / 60, 2)) AS total_minutos

FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historicos AS H

ON U.usuario_id = H.usuario_id
INNER JOIN  SpotifyClone.musicas AS M
ON M.musica_id = H.musica_id

GROUP BY U.usuario
ORDER BY U.usuario;

      