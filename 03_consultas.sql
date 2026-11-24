SELECT * FROM Venda WHERE valorTotal > 1000;
SELECT Nome FROM Pessoa WHERE idPessoa BETWEEN 5 AND 10;
SELECT Pessoa.nome FROM Pessoa JOIN Funcionario ON Pessoa.idPessoa = Funcionario.idPessoa WHERE Funcionario.Cargo = 'Gerente';
