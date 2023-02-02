SELECT AR.artista AS artista,
AL.album AS album,
COUNT(S.usuario_id) AS seguidores

FROM SpotifyClone.seguindo_artistas AS S
INNER JOIN  SpotifyClone.albuns AS AL
ON S.artista_id = AL.artista_id
INNER JOIN SpotifyClone.artistas AS AR
ON AR.artista_id = S.artista_id

GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;