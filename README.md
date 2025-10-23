<h1 align="center"> Projeto Banco de Dados: Loja </h1>

# Índice

- [Título](#Título)
- [Índice](#índice)
- [Descrição do Projeto](#descrição-do-projeto)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Utilizar o Banco de Dados](#como-utilizar-o-banco-de-dados)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)

# Descrição do Projeto

O banco de dados, chamado Loja, é projetado para armazenar informações de clientes, sua localização (estado e município) e o controle de suas contas a receber. O projeto é dividido em três etapas principais:
- **DDL (Data Definition Language)**: Criação da estrutura do banco de dados `Loja` e suas tabelas: `Estado`, `Municipio`, `Cliente` e `ContaReceber`.
- **DML (Data Manipulation Language)**: Inserção de dados de exemplo para popular todas as tabelas.
- **DQL (Data Query Language)**: Criação da `VIEW V_ContasNaoPagas` para consultar contas pendentes.

# Estrutura do Projeto

O repositório está organizado com os seguintes scripts SQL:

- `loja.sql`: Contém todos os comandos DDL (CREATE DATABASE, CREATE TABLE) para construir a estrutura completa do banco.
- `inserir.sql`: Contém todos os comandos DML (INSERT INTO) para popular o banco de dados.
- `consulta.sql`: Contém o comando DQL para a criação da `VIEW` solicitada.

# Como Utilizar o Banco de Dados

Para recriar este banco de dados e executar as consultas, siga os passos abaixo:
**Pré-requisitos**
- MySQL Server instalado e em execução.
- MySQL Workbench (ou qualquer outro cliente MySQL) instalado.
- Acesso de usuário com permissões para criar bancos de dados, tabelas e views.

**Instruções**
1. Clone o repositório (ou baixe os arquivos SQL).
2. Abra o MySQL Workbench e conecte-se ao seu servidor MySQL.
3. Execute os scripts na ordem correta:
   
   a. **Criar a Estrutura (DDL)**: Abra e execute o conteúdo do arquivo `loja.sql`. Isso criará o banco `Loja` e todas as tabelas (`Estado`, `Municipio`, `Cliente`, `ContaReceber`).
   
   b. **Popular o Banco (DML)**: Abra e execute o arquivo `inserir.sql`. Isso irá popular as tabelas com os dados de exemplo.
   
   c. **Criar a Visão (DQL)**: Abra e execute o arquivo `consulta.sql`. Isso criará a `VIEW V_ContasNaoPagas`.
   
5. Verifique o Resultado: Para consultar os dados da `VIEW` criada, execute o seguinte comando: 
   
```
USE Loja; 
SELECT * FROM V_ContasNaoPagas;
```

# Tecnologias Utilizadas

- **SGBD**: MySQL Server
- **Linguagem**: SQL (DDL, DML, DQL)
- **Ferramenta**: MySQL Workbench

<img width="48" height="48" src="https://img.icons8.com/fluency/48/sql.png" alt="sql"/> <img width="48" height="48" src="https://img.icons8.com/fluency/48/mysql-logo.png" alt="mysql-logo"/>

###

Este projeto foi desenvolvido como atividade acadêmica para a disciplina de Programação e Desenvolvimento de Banco de Dados na Anhanguera Educacional.
