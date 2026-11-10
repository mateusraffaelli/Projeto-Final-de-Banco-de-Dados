# Projeto Final de Banco de Dados

## 1. Objetivo
Construir e consultar um banco de dados relacional completo para o estoque de uma loja, aplicando todo o conteúdo da disciplina: modelagem (MER), modelo relacional, normalização, SQL (DDL, DML e consultas) e álgebra relacional.

## 2. Relatório
### 2.1. Descrição do negócio

(10 regras de negócio)

1. `Produto` deve ter sempre um `TipoProduto`
1. `ItemVenda` deve referenciar um `Produto` que foi vendido.
1. `Venda` deve ter pelo menos 1 `ItemVenda`
1. `Venda` é feita por um `Cliente` e executada por um `Funcionário`
1. `Venda` deve ter pelo menos 1 `FormaPagamento`
1. `TipoProduto` pode ter mais de uma `categoria`
1. `Produto` deve ter `precoItem` maior que 0.
1. `ItemVenda` deve registrar obrigatorimente a `quantidadeItem`
1. `Venda` deve possuir um `valorTotal` que é a soma de `preçoItem` de `ItemVenda`
1. `Funcionario` deve ter obragatoriamente um `cargo` válido.

### 2.2. Diagrama MER
```mermaid
erDiagram
    TipoProduto ||--o{ Produto : "contem"
    Produto ||--o{ ItemVenda : "compoe"
    Venda ||--o{ ItemVenda : "possui"
    Venda }o--|| Pessoa : "feita-por"
    Venda }o--o{ FormaPagamento : "paga-com"
    

    %% Especialização
    Pessoa ||--o| Funcionario : "é um"
    Pessoa ||--o| Cliente : "é um"

    Produto {
        int idProduto PK
        double precoItem
        int idTipoProduto FK
    }

    TipoProduto {
        int idTipoProduto PK
        string categoria "multivalorado"
    }

    Venda {
        int idVenda PK
        date dataVenda
        int idFuncionario FK
        int idCliente FK
        double valorTotal
    }

    FormaPagamento {
        int idFormaPagamento PK
        string metodo
    }

    ItemVenda {
        int idItemVenda PK
        int idVenda FK
        int idProduto FK
        int quantidadeItem
        double precoItem FK 
    }
    
    Pessoa {
        int idPessoa PK
        string nome
    }

    Funcionario {
        int idPessoa PK, FK
        string nome FK
        string cargo
    }

    Cliente {
        int idPessoa PK, FK
        string nome FK
    }
```

## 3. Banco de dados


## 4. Scripts SQL
