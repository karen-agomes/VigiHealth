# 🩺 VigiHealth:  Sistema de Vigilância Epidemiológica Básica - Projeto de Banco de Dados  

---

## 📘 Visão Geral do Projeto

Este repositório contém a implementação prática de um banco de dados relacional desenvolvido ao longo das Experiências Práticas (EP1 a EP4).  
O projeto simula um **sistema de notificação de doenças**, registrando pacientes, profissionais de saúde, unidades, doenças, notificações e resultados laboratoriais.

Tem como foco a **manipulação de dados usando SQL (DML)**, incluindo:

- Comandos **INSERT** para povoar o banco;
- Consultas **SELECT** com filtros, ordenações e JOINs;
- Atualizações **UPDATE** respeitando integridade referencial;
- Exclusões **DELETE** com condições.

---

## 🧩 Mini-mundo (Resumo)

O sistema registra informações de:

- 🧑‍⚕️ **Pacientes** atendidos pelo serviço de saúde;  
- 🏥 **Unidades de Saúde** que realizam atendimentos e notificações;  
- 👨‍⚕️ **Profissionais** responsáveis pelos registros;  
- 🦠 **Doenças** notificáveis;  
- 📄 **Notificações** realizadas;  
- 🧪 **Resultados Laboratoriais** associados às notificações.

Regras principais do mini-mundo:

- Um **paciente** pode ter várias notificações.  
- Cada **notificação** se refere a **uma única doença**.  
- Cada notificação é registrada por **um profissional** e ocorre em **uma unidade de saúde**.  
- Cada notificação pode ter vários resultados laboratoriais, mas cada resultado pertence a **uma única notificação**.

---

## 📌 Conteúdo do Repositório

### 📁 **/scripts**
Contém três arquivos principais:

#### **1. `01_inserts.sql`**
Script responsável por inserir dados nas tabelas:
- `Paciente`
- `UnidadeSaude`
- `Profissional`
- `Doenca`
- `Notificacao`
- `ResultadoLaboratorial`

Os valores foram criados para refletir cenários reais, respeitando tipos de dados, chaves primárias e chaves estrangeiras.

---

#### **2. `02_selects.sql`**
Contém entre 2 e 5 consultas utilizando:
- `SELECT`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `JOIN` (INNER/LEFT)

Consultas voltadas ao contexto epidemiológico, como:
- listagem de notificações por município,
- relação entre pacientes e doenças,
- resultados laboratoriais vinculados às notificações.

---

#### **3. `03_updates_deletes.sql`**
Inclui:
- **3 comandos de UPDATE**, atualizando registros com condições específicas;
- **3 comandos de DELETE**, removendo registros de forma segura e sem violar integridade referencial.

---

## 🗂️ Modelo Lógico Utilizado

O banco segue o modelo construído anteriormente, incluindo as tabelas:

- **Paciente**
- **UnidadeSaude**
- **Profissional**
- **Doenca**
- **Notificacao**
- **ResultadoLaboratorial**

Todos os relacionamentos, cardinalidades e chaves foram mantidos conforme a modelagem.

---

## 🚀 Como Executar

1. Abra o **MySQL Workbench** (ou outro ambiente compatível com MySQL).
2. Execute o arquivo `01_inserts.sql`.
3. Em seguida, rode as consultas em `02_selects.sql`.
4. Por fim, utilize `03_updates_deletes.sql` para testar manipulação de dados.
5. Caso necessário, ajuste o schema no topo dos arquivos.

---

## 🛠️ Tecnologias Utilizadas
- **SQL padrão** (foco em DML)
- **Git & GitHub**

---

## ✨ Autora
**Karen Gomes**  
Disciplina: Modelagem de Banco de Dados
