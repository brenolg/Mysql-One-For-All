# MySQL All For One

O projeto consiste em normalizar um banco de dados desnormalizado e desenvolver queries que retornem a quantidade de colunas e registros esperados. Para isso, foi necessário analisar duas tabelas não normalizadas, identificar modificações necessárias para adequá-las às Formas Normais. Foi criado um banco de dados SQL a partir de dados disponibilizados através de uma planilha Excel. O projeto foi importante para desenvolver habilidades essenciais para quem trabalha com estruturas de banco de dados diariamente, como a redução de erros, diminuição de redundância e garantia de integridade de dados.

## Funcionalidades

- Identificar e realizar modificações necessárias para que as tabelas estejam adequadamente na 1ª, 2ª e 3ª Forma Normais
- Criação de um banco de dados a partir de uma planilha que contém tabelas e dados
- Criar e modelar tabelas
- Queries que passam pelos principais comandos SQL

## Tecnologias utilizadas

- MySQL
- Queries
- Banco de dados
- Gerenciamento de banco de dados (SGBD)
- Docker

## Instalação do projeto localmente

Para instalar e executar o projeto localmente, você precisa ter o Docker instalado na sua máquina. Depois, siga os seguintes passos:

1. Clone o repositório do GitHub:

```bash
git@github.com:brenolg/Mysql-One-For-All.git
```
Rode os serviços node e db:
```bash
docker-compose up -d
```
Rode o container one_for_all via CLI ou abri-lo no VS Code
```bash
docker exec -it one_for_all bash
```
Instale as dependências usando
```bash
npm install
```
- As credenciais de acesso ao banco de dados estão definidas no arquivo docker-compose.yml, e são acessíveis no container através das variáveis de ambiente MYSQL_USER e MYSQL_PASSWORD
- As queries estão nos arquivos desafio{x}sql 
- Conecte-se ao banco e execute as queries como preferir

## Requisitos do projeto

1. Normalize as tabelas para a 3ª Forma Normal
2. Exibe as estatísticas musicais
3. Exibe o histórico de reprodução para cada pessoa usuária
4. Exibe a condicao do usuario se esta ativo ou inativo
5. Exibe top 2 hits mais tocados no momento
6. Exibe o relatório de faturamento da empresa
7. Exibe uma relação de todos os álbuns produzidos por cada artista
8. Exibe uma relação de álbuns produzidos pelo artista Elis Regina

## Agradecimentos
Este projeto foi desenvolvido como parte do curso de Desenvolvimento de Software da Trybe. Agradeço à Trybe pela oportunidade de aprender e praticar SQL e outras tecnologias.


