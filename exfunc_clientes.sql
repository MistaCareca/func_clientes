DELIMITER //

-- Criação da tabela 
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    data_cadastro DATETIME NOT NULL
)//

-- Criação da função
CREATE FUNCTION ContarClientesPorDia(data_consulta DATE)
RETURNS INTEGER
DETERMINISTIC
BEGIN
    DECLARE total_clientes INTEGER;
    
    SELECT COUNT(*) INTO total_clientes
    FROM clientes
    WHERE DATE(data_cadastro) = data_consulta;
    
    RETURN total_clientes;
END//

DELIMITER ;

-- Inserir dados para teste
INSERT INTO clientes (nome, email, data_cadastro) VALUES
    ('João Silva', 'joao@email.com', '2025-05-01 10:00:00'),
    ('Maria Oliveira', 'maria@email.com', '2025-05-01 14:30:00'),
    ('Pedro Santos', 'pedro@email.com', '2025-05-02 09:15:00');

-- Consulta de clientes cadastrados no dia 01/05/2025
SELECT ContarClientesPorDia('2025-05-01'); -- Retorna 2