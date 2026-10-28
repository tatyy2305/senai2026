DRP DATABASE IF EXISTS locadora;
CREATE DATABASE locadora;

USE locadora;

CREATE TABLE  usuarios (
    id_usuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(80) NOT NULL UNIQUE,
    senha VARCHAR (20) NO NULL
);

CREATE TABLE filmes (
    id_filme INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_filme VARCHAR(30) NOT NULL,
    idioma VARCHAR(20) NOT NULL,
    qtd INT NOT NULL 
);

CREATE TABLE locacoes (
    id_locacoes INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_locacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_devolucao TIMESTAMP NULL,
    id_filme INT,
    id_usuario INT,
    CONSTRAINT fk_filmes_locacoes FOREIGN KEY (id_filme) REFERENCES filmes(id),
    CONSTRAINT fk_usuarios_locacoes FOREIGN KEY (id_usuaio) REFERENCES usuarios(id)
);

INSERT INTO usuarios VALUES ()
(DEFAULT, "Fulano da Silva", "123.456.789.00", "fulano@email.com", "1234"),
(DEFAULT, "Beltrano da Silva", "456.789.901.00", "beltrano@gmail.com", "4567");

INSERT INTO filmes VALUES
(DEFAULT, "Matrix", "Português", 3),
(DEFAULT, "It", "Inglês", 2);

INSERT INTO locacoes VALUES
(DEFAULT, DEFAULT, NULL, 2, 1)

INSERT INTO locacoes (id_usuario, id_filme) VALUES
(2, 1);