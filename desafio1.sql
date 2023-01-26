DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;


 CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      artista VARCHAR(150) NOT NULL,
  ) engine = InnoDB;

  INSERT INTO SpotigyClone.artista(artista) VALUES ("Beyoncé");
  INSERT INTO SpotigyClone.artista(artista) VALUES ("Queen");
  INSERT INTO SpotigyClone.artista(artista) VALUES ("Elis Regina");
  INSERT INTO SpotigyClone.artista(artista) VALUES ("Baco Exu do Blues");
  INSERT INTO SpotigyClone.artista(artista) VALUES ("Nina Simone");

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      album VARCHAR(150) NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Renaissance", 1);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Jazz", 2);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Hot Space", 2);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Falso Brilhante", 3);
I NSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Vento de Maio", 3);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("QVVJFA?", 4);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("Somewhere Far Beyond", 5);
  INSERT INTO SpotifyClone.album(album, artista_id) VALUES ("I Put A Spell On You", 6);


  CREATE TABLE SpotifyClone.cancao(
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(150) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album(album_id)
) ENGINE=InnoDB;

  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("BREAK MY SOUL", 1);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("VIRGO’S GROOVE", 1);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("ALIEN SUPERSTAR", 1);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Don’t Stop Me Now", 2);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Como Nossos Pais", 3);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("O Medo de Amar é o Medo de Ser Livre", 3);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Samba em Paris", 4);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("The Bard’s Song", 5);
  INSERT INTO SpotifyClone.cancao(cancao, album_id) VALUES ("Feeling Good", 6);

  CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      plano VARCHAR(150) NOT NULL,
      valor_plano DECIMAL(3, 2) NOT NULL
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("gratuito", 0);
  INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("familiar", 7.99);
  INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("universitário", 5.99);
  INSERT INTO SpotifyClone.plano(plano, valor_plano) VALUES ("pessoal", 6.99);



  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      usuario VARCHAR(150) NOT NULL,
      idade INT NOT NULL
      plano_id INT NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano(plano_id)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Barbara Liskov", 82, 1);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Robert Cecil Martin", 58, 1);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Ada Lovelace", 37, 2);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Martin Fowler", 46, 2);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Sandi Metz", 58, 2);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Paulo Freire", 19, 3);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Bell Hooks", 26, 3);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Christopher Alexander", 85, 4);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Judith Butler", 45, 4);
  INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id) VALUES ("Jorge Amado", 58, 4);

  CREATE TABLE SpotifyClone.seguidores(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
      FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
      FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista(artista_id)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (1, 1);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (1, 2);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (1, 3);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (2, 1);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (2, 3);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (3, 2);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (4, 4);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (5, 5);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (5, 6);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (7, 6);
  INSERT INTO SpotifyClone.seguidores(usuario_id, artista_id) VALUES (9, 3);

  CREATE TABLE SpotifyClone.historico_reproducoes(
      usuario_id INT NOT NULL,
      historico_cancao VARCHAR(100) NOT NULL,
      CONSTRAINT PRIMARY KEY (usuario_id, historico_cancao),
      FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario(usuario_id),
      FOREIGN KEY (historico_cancao) REFERENCES SpotifyClone.casoes(historico_cancao)
  ) ENGINE = InnoDB;

  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (1, 4);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (1, 1);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (1, 6);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (2, 3);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (3, 6);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (3, 1);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (4, 4);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (5, 4);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (6, 3);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (6, 1);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (7, 2);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (8, 2);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (9, 5);
  INSERT INTO SpotifyClone.historico_reproducao(usuario_id, historico_cancao) VALUES (10, 1);
