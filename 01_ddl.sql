BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "TipoProduto" (
	"idTipoProduto"	INTEGER,
	"categoria"	TEXT,
	PRIMARY KEY("idTipoProduto")
);
CREATE TABLE IF NOT EXISTS "Produto" (
	"idProduto"	INTEGER,
	"precoitem"	REAL,
	"idTipoProduto"	INTEGER,
	PRIMARY KEY("idProduto")
);
CREATE TABLE IF NOT EXISTS "ItemVenda" (
	"idItemVenda"	INTEGER,
	"idVenda"	INTEGER,
	"idProduto"	INTEGER,
	"quantidadeItem"	INTEGER,
	"precoItem"	REAL,
	PRIMARY KEY("idItemVenda")
);
CREATE TABLE IF NOT EXISTS "Venda" (
	"idVenda"	INTEGER,
	"dataVenda"	REAL,
	"idFuncionario"	INTEGER,
	"idCliente"	INTEGER,
	"valorTotal"	REAL,
	PRIMARY KEY("idVenda")
);
CREATE TABLE IF NOT EXISTS "FormaPagamento" (
	"idFormaPagamento"	INTEGER,
	"metodo"	TEXT,
	PRIMARY KEY("idFormaPagamento")
);
CREATE TABLE IF NOT EXISTS "Pessoa" (
	"idPessoa"	INTEGER,
	"nome"	TEXT,
	PRIMARY KEY("idPessoa")
);
CREATE TABLE IF NOT EXISTS "Funcionario" (
	"idPessoa"	INTEGER,
	"nome"	TEXT,
	"cargo"	TEXT,
	PRIMARY KEY("idPessoa")
);
CREATE TABLE IF NOT EXISTS "Cliente" (
	"idPessoa"	INTEGER,
	"nome"	TEXT,
	PRIMARY KEY("idPessoa")
);
COMMIT;
