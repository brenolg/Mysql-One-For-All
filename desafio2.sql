SELECT COUNT(DISTINCT M.musica) AS cancoes,
       COUNT(DISTINCT ART.artista) AS artistas,
       COUNT(DISTINCT ALB.album) AS albuns
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.artistas AS ART
INNER JOIN SpotifyClone.albuns as ALB;