SELECT U.usuario AS 'usuario', 
IF(MAX(YEAR(H.historico)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'

FROM SpotifyClone.usuarios AS U
LEFT JOIN SpotifyClone.historicos AS H

ON U.usuario_id = H.usuario_id

GROUP BY U.usuario
ORDER BY U.usuario;

      