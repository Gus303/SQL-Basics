-- I'm going to use postgresSQL in this project, but is you can use other
-- Create a simple table
-- Put "DROP TABLE" in the begining, just in case
DROP TABLE clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    cidade VARCHAR(50) NOT NULL
);
-- Put some elements in the table
INSERT INTO clientes (nome, email, cidade) VALUES
('Ana Souza', 'ana@email.com', 'São Paulo'),
('Carlos Lima', 'carlos@email.com', 'Rio de Janeiro'),
('Mariana Rocha', 'mariana@email.com', 'São Paulo'),
('João Pedro', 'joao@email.com', 'Belo Horizonte');
-- Now select them using "SELECT" and select all using "*"
SELECT * FROM clientes
-- Drop the table in the final line
DROP TABLE clientes
