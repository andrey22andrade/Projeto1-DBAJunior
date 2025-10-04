-- =============================================
-- Script: 02_criacao_tabelas.sql
-- Autor: Andrey Andrade
-- Descrição: Criação das tabelas iniciais do banco LojaDBAJunior
-- =============================================

USE LojaDBAJunior;
GO

-- Tabela de Clientes
CREATE TABLE Clientes (
    IdCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Telefone NVARCHAR(20),
    DataCadastro DATETIME DEFAULT GETDATE()
);
GO

-- Tabela de Produtos
CREATE TABLE Produtos (
    IdProduto INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Categoria NVARCHAR(50),
    Preco DECIMAL(10,2) NOT NULL,
    Estoque INT DEFAULT 0
);
GO

-- Tabela de Vendas
CREATE TABLE Vendas (
    IdVenda INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT NOT NULL,
    DataVenda DATETIME DEFAULT GETDATE(),
    ValorTotal DECIMAL(10,2),
    FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente)
);
GO

-- Tabela de Itens da Venda
CREATE TABLE ItensVenda (
    IdItem INT IDENTITY(1,1) PRIMARY KEY,
    IdVenda INT NOT NULL,
    IdProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (IdVenda) REFERENCES Vendas(IdVenda),
    FOREIGN KEY (IdProduto) REFERENCES Produtos(IdProduto)
);
GO