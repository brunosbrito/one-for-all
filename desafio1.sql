DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(300) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(300) NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas(id)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.musicas(
      id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(300) NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES albuns(id)
  ) engine = InnoDB;

   CREATE TABLE SpotifyClone.planos(
      id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(150) NOT NULL,
      valor DECIMAL (3,2) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuarios(
      id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(150) NOT NULL,
      plano_id INT NOT NULL,
      idade INT,
      FOREIGN KEY (plano_id) REFERENCES planos(id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico(
      musica_id INT,
      usuario_id INT,
      CONSTRAINT PRIMARY KEY(musica_id, usuario_id),
      FOREIGN KEY (musica_id) REFERENCES musicas(id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguidores(
      usuario_id INT,
      artista_id INT,
      CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artistas(id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
  ) engine = InnoDB;

  INSERT INTO 
SpotifyClone.artistas(nome)
VALUES 
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO 
SpotifyClone.albuns(nome,artista_id)
VALUES
('Renaissance', 1),
('Jazz', 2),
('Hot Space', 2),
('Falso Brilhante',3),
('Vento de Maio', 3),
('QVVJFA?', 4),
('Somewhere Far Beyond', 5),
('I Put A Spell On You', 6);

INSERT INTO 
SpotifyClone.musicas(nome, album_id)
VALUES
('BREAK MY SOUL', 1),
('VIRGO’S GROOVE', 1),
('ALIEN SUPERSTAR', 1),
('Don’t Stop Me Now', 2),
('Under Pressure', 3),
('Como Nossos Pais', 4),
('O Medo de Amar é o Medo de Ser Livre', 5),
('Samba em Paris', 6),
('The Bard’s Song', 7),
('Feeling Good', 8);

INSERT INTO 
SpotifyClone.planos(nome, valor)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99),
('pessoal', 6.99);

INSERT INTO 
SpotifyClone.usuarios(nome, idade, plano_id)
VALUES
('Barbara Liskov', 82, 1),
('Robert Cecil Martin', 58, 1),
('Ada Lovelace', 37, 2),
('Martin Fowler', 46, 2),
('Sandi Metz', 58, 2),
('Paulo Freire', 19, 3),
('Bell Hooks', 26, 3),
('Christopher Alexander', 85, 4),
('Judith Butler', 45, 4),
('Jorge Amado', 58, 4);

INSERT INTO 
SpotifyClone.historico(usuario_id, musica_id)
VALUES 
(1, 8),
(1, 2),
(1, 10),
(2, 10),
(2, 7),
(3, 10),
(3, 2),
(4, 8),
(5, 8),
(5, 5),
(6, 7),
(6, 1),
(7, 4),
(8, 4),
(9, 9),
(10, 3);

INSERT INTO 
SpotifyClone.seguidores(usuario_id, artista_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(9, 3),
(10, 2);
