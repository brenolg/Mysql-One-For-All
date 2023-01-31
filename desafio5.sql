SELECT M.musica AS cancao, 
COUNT(H.musica_id) AS reproducoes

FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historicos AS H

ON M.musica_id = H.musica_id

GROUP BY M.musica_id
ORDER BY reproducoes DESC, M.musica
LIMIT 2;