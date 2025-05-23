# Projeto SQL - Sistema de Pedidos em Restaurante 🍽️

Este projeto demonstra o uso de SQL em um cenário realista de gestão de pedidos em um restaurante. Inclui a modelagem do banco de dados, inserção de dados, criação de *views*, consultas com junções, agregações e condições para geração de insights.

## 🧱 Estrutura do Banco de Dados

O banco de dados `restaurante` foi criado com as seguintes tabelas principais:

- `clientes`: informações dos clientes
- `funcionários`: dados dos atendentes
- `produto`: itens disponíveis no cardápio
- `pedido`: pedidos realizados por clientes

## 📥 Inserção de Dados

Foram populadas todas as tabelas com dados fictícios para simular uma operação real de pedidos, vendas e atendimento.

## 🛠️ Técnicas e Consultas Utilizadas

### 🧩 Junções entre Tabelas
- `INNER JOIN`, `LEFT JOIN` para cruzar informações de pedidos com clientes, produtos e funcionários.

### 📊 Agregações
- `SUM()`, `AVG()`, `MAX()`, `COUNT()` para calcular totais de vendas, média de consumo, e produtos mais vendidos.

### 🧠 Consultas Avançadas
- Filtros com `WHERE`, `BETWEEN`, `IN`, `LIKE`
- Agrupamentos com `GROUP BY`
- Ordenações com `ORDER BY`
- Condições com `CASE WHEN` para categorizar ou filtrar dados
- Subqueries para cálculos intermediários

### 🔎 Views
- Criação de `VIEW resumo_pedido` para simplificar o acesso a dados integrados do pedido


🚀 Como Executar
Execute o script criacao_banco.sql para criar o banco e as tabelas.

Rode o script insercao_dados.sql para popular as tabelas.

Execute os arquivos de consulta como consultas_avancadas.sql ou resumo_pedido.sql.

🛠️ Tecnologias Usadas
SQL padrão

MySQL (ou compatível)

MySQL Workbench / DBeaver para execução das queries

👨‍💻 Autor
Projeto desenvolvido por Alessandro Beserra.
Contato: alessandro90.silva.b@gmail.com | GitHub: alessandrosbeserra
