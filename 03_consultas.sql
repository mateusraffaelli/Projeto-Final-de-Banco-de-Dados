-- SELECT com filtros ( WHERE , LIKE , IN , BETWEEN ) e ordenação

SELECT * FROM Venda WHERE valorTotal > 1000;
SELECT Nome FROM Pessoa WHERE idPessoa BETWEEN 5 AND 10;
SELECT Pessoa.nome FROM Pessoa JOIN Funcionario ON Pessoa.idPessoa = Funcionario.idPessoa WHERE Funcionario.Cargo = 'Gerente';

-- Funções de agregação, GROUP BY e HAVING
-- 1) Contar Tipos de produtos:
SELECT COUNT(*) FROM TipoProduto;
-- 2) Somar as vendas:
SELECT SUM(valorTotal) FROM Venda;
-- 3) Contar o numero de funcionarios em cada cargo:
SELECT cargo, COUNT(*) FROM Funcionario
GROUP BY cargo;
-- 4) Conta os grupos de funcionarios que possuem mais de 4 pessoas
SELECT cargo, COUNT(*) FROM Funcionario
GROUP BY cargo
HAVING COUNT(*) > 4;

-- INNER JOIN , LEFT JOIN e junção de 3 ou mais tabelas
-- 1) Relaciona o cliente com a venda
SELECT
	Pessoa.nome,
	Venda.idVenda
From Pessoa INNER JOIN Venda
	ON Pessoa.idPessoa = Venda.idCliente;
	
-- 2) Relaciona funcionarios com as vendas mesmo sem correspondencia
SELECT
	Pessoa.nome,
	Venda.idVenda
From Pessoa LEFT JOIN Venda
	ON Pessoa.idPessoa = Venda.idFuncionario;
	
-- 3) Relaciona id do produto, data da venda e nome do cliente
SELECT
	Produto.idProduto,
	Venda.dataVenda,
	Pessoa.nome
FROM Produto RIGHT JOIN Venda
	ON Produto.idProduto = Venda.idVenda
RIGHT JOIN Pessoa
	ON Pessoa.idPessoa = Venda.idCliente;
	
-- 4) Valor da venda, forma de pagamento e nome do funcionario
SELECT
	Venda.valorTotal,
	FormaPagamento.metodo,
	Pessoa.nome
FROM Venda INNER JOIN VendaPagamento
	ON Venda.idVenda = VendaPagamento.idFormaPagamento
INNER JOIN FormaPagamento
	ON FormaPagamento.idFormaPagamento = VendaPagamento.idFormaPagamento
INNER JOIN Pessoa
	ON Pessoa.idPessoa = Venda.idFuncionario;
	
--5) categoria do produto, data da venda e cliente
SELECT
    TipoProdutoCategoria.categoria,
    Venda.dataVenda,
    Pessoa.nome
FROM TipoProdutoCategoria
LEFT JOIN Produto
    ON TipoProdutoCategoria.idTipoProduto = Produto.idTipoProduto
LEFT JOIN ItemVenda
    ON Produto.idProduto = ItemVenda.idProduto
LEFT JOIN Venda
    ON Venda.idVenda = ItemVenda.idVenda
LEFT JOIN Pessoa
    ON Pessoa.idPessoa = Venda.idCliente;

-- Subconsultas ( IN , EXISTS , escalar) 

-- UNION / DISTINCT , CASE WHEN , funções de data e texto
SELECT 
	Pessoa.nome AS cliente,
	Venda.valorTotal, 
	CASE 
		WHEN valorTotal >= 1000 THEN 'Muito Caro'
		WHEN valorTotal >= 500 THEN 'Caro'
		WHEN valorTotal >= 300 THEN 'Um pouco Caro'
		WHEN valorTotal >= 100 THEN 'Barato'
		ELSE 'Muito Barato'
	END AS porte_venda
	FROM Venda
	JOIN Cliente ON Venda.idCliente = Cliente.idPessoa
	JOIN Pessoa ON Cliente.idPessoa = Pessoa.idPessoa;
	
SELECT 
    idVenda,
    STRFTIME('%d/%m/%Y', dataVenda) AS data_formatada,
    valorTotal
FROM Venda
WHERE dataVenda >= '2026-10-01'
ORDER BY dataVenda DESC;

-- Views úteis para o negócio

-- Expressões de álgebra relacional (seleção, projeção, junção)
