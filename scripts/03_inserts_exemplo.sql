-- =============================================
-- Script: 03_inserts_exemplo.sql
-- Autor: Andrey Andrade
-- Descrição: Inserção de dados de exemplo para testes
-- =============================================

USE LojaDBAJunior;
GO

-- Inserindo clientes
INSERT INTO Clientes (Nome, Email, Telefone)
VALUES 
('João Silva', 'joao.silva@email.com', '(21) 99999-1111'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 98888-2222'),
('Carlos Souza', 'carlos.souza@email.com', '(21) 97777-3333');
GO

-- Inserindo produtos
INSERT INTO Produtos (Nome, Categoria, Preco, Estoque)
VALUES
('Mouse Gamer', 'Periféricos', 150.00, 20),
('Teclado Mecânico', 'Periféricos', 350.00, 15),
('Monitor 24"', 'Monitores', 1200.00, 10),
('Headset', 'Áudio', 200.00, 25);
GO

-- Inserindo vendas
INSERT INTO Vendas (IdCliente, ValorTotal)
VALUES 
(1, 500.00),
(2, 1200.00);
GO

-- Inserindo itens de venda
INSERT INTO ItensVenda (IdVenda, IdProduto, Quantidade, PrecoUnitario)
VALUES
(1, 1, 2, 150.00),  -- 2 Mouses Gamer
(1, 2, 1, 350.00),  -- 1 Teclado Mecânico
(2, 3, 1, 1200.00); -- 1 Monitor 24"
GO
