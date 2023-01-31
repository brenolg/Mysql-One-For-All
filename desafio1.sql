DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(200) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      album VARCHAR(200) NOT NULL,
      ano_lancamento YEAR NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.musicas(
      musica_id INT PRIMARY KEY AUTO_INCREMENT,
      musica  VARCHAR(200) NOT NULL,
      duracao_segundos INT NOT NULL,
	  album_id INT NOT NULL,
	  artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
      FOREIGN KEY (album_id) REFERENCES albuns(album_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.planos(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      plano VARCHAR(100) NOT NULL,
	  valor DECIMAL(5,2) NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      usuario VARCHAR(200) NOT NULL,
	  idade INT NOT NULL,
      plano_id INT NOT NULL,
      assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.historicos(
      usuario_id INT NOT NULL,
      musica_id INT NOT NULL,
	  historico DATETIME NOT NULL,
      CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
      FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo_artistas(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.artistas (artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.albuns(album, artista_id, ano_lancamento)
  VALUES
    ('Renaissance','1', 2022),
    ('Jazz', '2', 1978),
	  ('Hot Space', '2', 1982),
    ('Falso Brilhante', '3', 1998),
    ('Vento de Maio', '3', 2001),
    ('QVVJFA?', '4', 2003),
    ('Somewhere Far Beyond', '5', 2007),
    ('I Put A Spell On You', '6', 2012);
    
  INSERT INTO SpotifyClone.musicas(musica, duracao_segundos, artista_id, album_id)
  VALUES
    ('BREAK MY SOUL', 279, 1, 1),
    ('VIRGO´S GROOVE', 369, 1, 1),
    ('ALIEN SUPERSTAR', 116, 1, 1),
    ('Don´t Stop Me Now', 203, 2, 2),
    ('Under Pressure', 152, 2, 3),
    ('Como Nossos Pais', 105, 3, 4),
    ('O medo de Amar é o Medo de ser Livre', 207, 3, 5),
   	('Samba em Paris', 267, 3, 5),
    ('The Bard´s Song', 244, 5, 7),
    ('Feeling Good',100 , 6, 8);
    
  INSERT INTO SpotifyClone.planos(plano, valor)
  VALUES
    ('gratuito', 0.00),
	  ('familiar', 7.99),
    ('universitario', 5.99),
    ('pessoal', 6.99);
    
  INSERT INTO SpotifyClone.usuarios(usuario, idade, plano_id, assinatura)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-12-30'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
	  ('Ada Lovelace', 37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 4, '2017-01-17'),
    ('Sandi Metz', 58, 4, '2018-04-29'),
    ('Paulo Freire', 19, 2, '2018-02-14'),
    ('Bell Hooks', 26, 2, '2018-01-05'),
	  ('Christopher Alexander', 85, 3, '2019-06-05'),
    ('Judith Butler', 45, 3, '2020-05-13'),
	  ('Jorge Amado', 58, 3, '2017-02-17');
    
  INSERT INTO SpotifyClone.seguindo_artistas(usuario_id, artista_id)
  VALUES
    (1, 5),
	  (2, 4),
    (4, 1),
    (5, 6),
    (5, 1),
    (6, 1),
    (6, 2),
    (7, 3),
    (8, 5),
    (9, 4),
    (9, 6),
    (10, 4),
    (10, 5),
    (10, 6);
    
  INSERT INTO SpotifyClone.historicos(usuario_id, musica_id, historico)
  VALUES
    (1, 8, '2022-02-28 10:45:55'),
    (1, 2, '2020-05-02 05:30:35'),
    (1, 10, '2020-03-06 11:22:33'),
	  (2, 10, '2022-08-05 08:05:17'),
    (2, 7, '2020-01-02 07:40:33'),
    (3, 10, '2020-11-13 16:55:13'),
    (3, 2, '2020-12-05 18:38:30'),
    (4, 8, '2021-08-15 17:10:10'),
    (5, 8, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
	  (6, 7, '2017-01-09 00:31:17'),
    (6, 1, '2017-10-12 12:35:20'),
	  (7, 4, '2011-12-15 23:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 9, '2022-02-24 21:14:22'),
	  (10, 3, '2015-12-13 08:30:22');
    



   
    


