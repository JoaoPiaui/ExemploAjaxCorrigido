DROP TABLE IF EXISTS produtos, vendas, pessoas;

CREATE TABLE pessoas(
id INT PRIMARY KEY IDENTITY(1,1),
nome VARCHAR(100),
cpf VARCHAR(14),
registro_ativo BIT
);

INSERT INTO pessoas( nome, cpf, registro_ativo)
VALUES('Lola','656.747.948-65',1),
('Lala','353.636.532-67',1) ;
  
CREATE TABLE vendas (
id INT PRIMARY KEY IDENTITY(1,1),
id_cliente INT, FOREIGN KEY (id_cliente) REFERENCES pessoas(id),
descricao TEXT,
registro_ativo BIT
);

CREATE TABLE produtos(
id INT PRIMARY KEY IDENTITY(1,1),
id_venda INT, FOREIGN KEY (id_venda) REFERENCES vendas(id),
nome VARCHAR (100),
quantidade INT,
valor DECIMAL (8,2)
);