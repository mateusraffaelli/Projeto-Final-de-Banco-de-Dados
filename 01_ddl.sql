PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS VendaPagamento;
DROP TABLE IF EXISTS ItemVenda;
DROP TABLE IF EXISTS Venda;
DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS TipoProdutoCategoria;
DROP TABLE IF EXISTS TipoProduto;
DROP TABLE IF EXISTS FormaPagamento;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    idPessoa  INTEGER PRIMARY KEY,
    nome      TEXT NOT NULL
);


CREATE TABLE Funcionario (
    idPessoa  INTEGER PRIMARY KEY,
    cargo     TEXT NOT NULL
              CHECK (cargo IN ('Gerente', 'Vendedor', 'Caixa', 'Estoquista')),
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa) ON DELETE CASCADE
);

CREATE TABLE Cliente (
    idPessoa  INTEGER PRIMARY KEY,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa) ON DELETE CASCADE
);

CREATE TABLE TipoProduto (
    idTipoProduto  INTEGER PRIMARY KEY
);


CREATE TABLE TipoProdutoCategoria (
    idTipoProduto  INTEGER NOT NULL,
    categoria      TEXT    NOT NULL,
    PRIMARY KEY (idTipoProduto, categoria),
    FOREIGN KEY (idTipoProduto) REFERENCES TipoProduto(idTipoProduto) ON DELETE CASCADE
);


CREATE TABLE Produto (
    idProduto      INTEGER PRIMARY KEY,
    precoItem      REAL    NOT NULL CHECK (precoItem > 0),
    idTipoProduto  INTEGER NOT NULL,
    FOREIGN KEY (idTipoProduto) REFERENCES TipoProduto(idTipoProduto)
);

CREATE TABLE FormaPagamento (
    idFormaPagamento  INTEGER PRIMARY KEY,
    metodo            TEXT NOT NULL UNIQUE
);


CREATE TABLE Venda (
    idVenda        INTEGER PRIMARY KEY,
    dataVenda      TEXT    NOT NULL DEFAULT (date('now')),
    valorTotal     REAL    NOT NULL DEFAULT 0 CHECK (valorTotal >= 0),
    idFuncionario  INTEGER NOT NULL,
    idCliente      INTEGER NOT NULL,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idPessoa),
    FOREIGN KEY (idCliente)     REFERENCES Cliente(idPessoa)
);


CREATE TABLE ItemVenda (
    idItemVenda     INTEGER PRIMARY KEY,
    idVenda         INTEGER NOT NULL,
    idProduto       INTEGER NOT NULL,
    quantidadeItem  INTEGER NOT NULL CHECK (quantidadeItem > 0),
    precoItem       REAL    NOT NULL CHECK (precoItem > 0),
    FOREIGN KEY (idVenda)   REFERENCES Venda(idVenda) ON DELETE CASCADE,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);


CREATE TABLE VendaPagamento (
    idVenda           INTEGER NOT NULL,
    idFormaPagamento  INTEGER NOT NULL,
    PRIMARY KEY (idVenda, idFormaPagamento),
    FOREIGN KEY (idVenda)          REFERENCES Venda(idVenda) ON DELETE CASCADE,
    FOREIGN KEY (idFormaPagamento) REFERENCES FormaPagamento(idFormaPagamento)
);