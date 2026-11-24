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
