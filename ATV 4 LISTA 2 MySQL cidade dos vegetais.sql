CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(255) NOT NULL,
  origem VARCHAR(255) NULL,
  PRIMARY KEY (id)
  );
  
  CREATE TABLE tb_produtos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  quantidade INT,
  preco DECIMAL(5,2) NOT NULL,
  datarecebimento DATE,
  origemId BIGINT,
  tipoId BIGINT,
  FOREIGN KEY (origemId) REFERENCES tb_categorias (id),
  FOREIGN KEY (tipoId) REFERENCES tb_categorias (id),
  PRIMARY KEY (id)
  );
  
  
  SELECT*FROM tb_categorias;
  SELECT*FROM tb_produtos;
-- 4)
INSERT INTO tb_categorias (tipo,origem)
VALUES ("Fruta", "MG"),
("Fruta","SP"),
("Fruta", "PR"),
("Legume","SP"),
("Legume", "RS");

-- 5)
INSERT INTO tb_produtos (nome,quantidade,preco,datarecebimento, tipoId, origemId)
VALUES ("Melancia", 76, 52.15, "2024-05-10",1,1),
("Morango", 49, 48.21, "2024-05-10",2,2),
("Maçã", 100, 69.90 , "2024-05-05",2,2),
("Bergamota", 502, 257.63, "2024-05-01",3,1),
("Caju", 76, 100.90, "2024-05-01",3,2),
("Abobrinha", 298, 43.60, "2024-05-10",4,4),
("Batata", 250, 38.63, "2024-05-05",5,5);

-- 6)
SELECT * FROM tb_produtos WHERE preco > 50.0;
-- 7)
SELECT * FROM tb_produtos WHERE preco > 50.0 AND preco < 150;

-- 8)
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- 9)
SELECT nome, quantidade, preco, datarecebimento, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.origemId = tb_categorias.id;

-- 10)
SELECT nome, quantidade, preco, datarecebimento, tb_categorias.origem
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.origemId = tb_categorias.id
WHERE tb_produtos.origemId = 2;



  
