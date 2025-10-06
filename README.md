# Projeto 1 - Criação e Configuração de Banco de Dados no SQL Server

Este repositório faz parte do meu portfólio como **DBA Júnior**, demonstrando conhecimentos em instalação, configuração e administração básica de bancos de dados no **SQL Server**.

---

## 🎯 Objetivo

Este projeto tem como objetivo demonstrar habilidades fundamentais de um **DBA Júnior**, incluindo:

- Instalação e configuração do SQL Server Developer Edition  
- Criação e configuração de um banco de dados no SQL Server  
- Criação de tabelas relacionadas (Clientes, Produtos, Vendas, ItensVenda)  
- Inserção de dados de exemplo para testes  
- Organização de scripts SQL em repositório  
- Documentação do ambiente de desenvolvimento  

---

## 🧠 Conceitos Aplicados neste Projeto

Durante a configuração e instalação do SQL Server foram aplicados conceitos fundamentais aprendidos no curso:

### 🧩 Instância
Uma **instância** é um executável do SQL Server rodando na memória.  
Cada instância pode controlar **vários bancos de dados (1–N)** e funciona de forma isolada.  
- **Instância Default:** usa o nome `(MSSQLSERVER)`  
- **Instância Nomeada:** pode ter qualquer nome definido pelo usuário  

> 💡 No projeto foi utilizada a instância **Default** do SQL Server Developer Edition.

---

### 📦 Collation
A **Collation** define regras de ordenação e diferenciação de acentos e maiúsculas/minúsculas.  
A mais utilizada no Brasil é **Latin1_General_CI_AS**:
- **CI** → Case Insensitive (não diferencia maiúsculas/minúsculas)  
- **AS** → Accent Sensitive (diferencia acentos)  

Comando para listar collations disponíveis:
```sql
SELECT * FROM sys.fn_helpcollations();
```

---

### 💾 Code Page x Unicode
- **Code Page**: armazena cada caractere em **1 byte** (256 caracteres).  
- **Unicode**: armazena cada caractere em **2 bytes**, suportando **65.536 caracteres** sem perda de acentos.  
- Tipos de dados:
  - `CHAR`, `VARCHAR`, `TEXT` → Code Page  
  - `NCHAR`, `NVARCHAR`, `NTEXT` → Unicode  

---

### ⚙️ Edição utilizada
A versão usada neste projeto é o **SQL Server 2022 Developer Edition**,  
idêntica à versão Enterprise, mas voltada apenas para **fins de desenvolvimento**.

📘 *Esses conceitos garantem que o ambiente SQL Server esteja configurado de forma correta e padronizada, assegurando desempenho e compatibilidade.*

---

## 🔍 Arquitetura do Banco e Armazenamento

O SQL Server organiza seus bancos de dados em arquivos físicos e lógicos, garantindo performance e segurança dos dados.

### Estrutura Física:
- **Arquivos de Dados Primários (.mdf)** → Contêm as tabelas e objetos principais.  
- **Arquivos de Dados Secundários (.ndf)** → Utilizados para dividir dados em múltiplos discos.  
- **Arquivos de Log (.ldf)** → Registram todas as transações realizadas.

### Estrutura Lógica:
- **Página:** menor unidade de armazenamento (8 KB)  
- **Extent:** grupo de 8 páginas (64 KB)  
- **Filegroup:** agrupamento lógico de arquivos (.mdf e .ndf)

No banco **LojaDBAJunior**, o armazenamento segue o padrão **PRIMARY FILEGROUP**, com arquivos de dados e log criados automaticamente pelo SQL Server.

---

## 🖥️ Ambiente Utilizado
- **SQL Server 2022 Developer Edition**  
- **SQL Server Management Studio (SSMS)**  
- **Sistema Operacional:** Windows 11  

📌 *Screenshot do ambiente:*

![SSMS aberto](imagens/ssms_aberto.png)

---

## 📂 Estrutura do Projeto

```
📁 Projeto1-DBAJúnior
┣ 📂 imagens/                  # Screenshots utilizadas no README
┣ 📂 scripts/                  # Scripts SQL utilizados no projeto
┃ ┣ 📜 01_criacao_banco.sql    # Criação do banco LojaDBAJunior
┃ ┣ 📜 02_criacao_tabelas.sql  # Criação das tabelas Clientes, Produtos, Vendas e ItensVenda
┃ ┗ 📜 03_inserts_exemplo.sql  # Inserção de dados fictícios para teste
┣ 📜 README.md                 # Documentação do projeto
```

---

## 🧱 Estrutura do Banco de Dados

**Banco de Dados:** `LojaDBAJunior`

### Tabelas Criadas:
- **Clientes** → informações básicas dos clientes  
- **Produtos** → catálogo de produtos e estoque  
- **Vendas** → registros de vendas realizadas  
- **ItensVenda** → detalhamento de cada item vendido  

---

## ▶️ Como Executar

1. Abra o **SQL Server Management Studio (SSMS)**.  
2. Conecte-se ao servidor SQL Server.  
3. Execute os scripts na seguinte ordem:  
   - `01_criacao_banco.sql`  
   - `02_criacao_tabelas.sql`  
   - `03_inserts_exemplo.sql`  
4. Expanda o banco **LojaDBAJunior** no Object Explorer e confirme a criação das tabelas e inserção dos dados.  

---

## 🔜 Próximos Passos

- Adicionar novas tabelas (Ex: Funcionários, Pagamentos).  
- Criar *views* e *stored procedures* para consultas.  
- Realizar **backup e restore** do banco de dados.  
- Criar usuários e permissões específicas.  

---

## 📌 Observações

Este projeto é voltado para **portfólio** e simula atividades reais de um **DBA Júnior**, servindo como base para estudos e futuras melhorias.

---

✉️ *Autor:* [Andrey Andrade](https://github.com/andrey22andrade)
