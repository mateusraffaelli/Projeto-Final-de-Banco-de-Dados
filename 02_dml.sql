INSERT INTO "TipoProduto" ("idTipoProduto")
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20);

INSERT INTO "TipoProdutoCategoria" ("idTipoProduto", "categoria") 
VALUES 
  (1, 'Frios'),
  (2, 'Laticínios'),
  (3, 'Hortifrúti'),
  (4, 'Carnes'),
  (5, 'Peixes e Frutos do Mar'),
  (6, 'Padaria e Confeitaria'),
  (7, 'Mercearia'),
  (8, 'Bebidas Alcoólicas'),
  (9, 'Bebidas Não Alcoólicas'),
  (10, 'Produtos de Limpeza'),
  (11, 'Higiene Pessoal'),
  (12, 'Congelados'),
  (13, 'Doces e Guloseimas'),
  (14, 'Conservas e Enlatados'),
  (15, 'Grãos e Cereais'),
  (16, 'Temperos e Condimentos'),
  (17, 'Pet Shop'),
  (18, 'Papelaria'),
  (19, 'Jardinagem'),
  (20, 'Utilidades Domésticas');


INSERT INTO "FormaPagamento" ("idFormaPagamento", "metodo")
VALUES
  (1, 'Dinheiro'),
  (2, 'Cheque'),
  (3, 'Pix'),
  (4, 'Débito'),
  (5, 'Crédito'),
  (6, 'Boleto Bancário'),
  (7, 'Vale-Alimentação'),
  (8, 'Vale-Refeição'),
  (9, 'Transferência Bancária'),
  (10, 'Carteira Digital'),
  (11, 'Crediário / Carnê'),
  (12, 'Vale-Presente / Gift Card'),
  (13, 'Cashback'),
  (14, 'Pontos / Milhas'),
  (15, 'Criptomoeda'),
  (16, 'Débito Automático'),
  (17, 'PayPal'),
  (18, 'Vale-Combustível'),
  (19, 'Voucher / Cupom'),
  (20, 'Link de Pagamento'),
  (21, 'Bonificação / Cortesia');


INSERT INTO "Pessoa" ("idPessoa", "nome") 
VALUES 
  (1, 'Mariana Silva'),
  (2, 'Lucas Oliveira'),
  (3, 'Fernanda Santos'),
  (4, 'Gabriel Souza'),
  (5, 'Juliana Costa'),
  (6, 'Rafael Pereira'),
  (7, 'Camila Rodrigues'),
  (8, 'Bruno Almeida'),
  (9, 'Beatriz Nascimento'),
  (10, 'Thiago Lima'),
  (11, 'Larissa Araújo'),
  (12, 'Rodrigo Fernandes'),
  (13, 'Amanda Carvalho'),
  (14, 'Felipe Gomes'),
  (15, 'Patrícia Martins'),
  (16, 'Diego Rocha'),
  (17, 'Vanessa Ribeiro'),
  (18, 'Gustavo Alves'),
  (19, 'Renata Monteiro'),
  (20, 'Eduardo Mendes'),
  (21, 'Carlos Eduardo'),
  (22, 'Ana Paula'),
  (23, 'João Pedro'),
  (24, 'Letícia Barbosa'),
  (25, 'Marcos Vinícius'),
  (26, 'Bruna Cardoso'),
  (27, 'André Luiz'),
  (28, 'Tatiana Teixeira'),
  (29, 'Fábio Correia'),
  (30, 'Débora Dias'),
  (31, 'Leandro Castro'),
  (32, 'Priscila Campos'),
  (33, 'Marcelo Freitas'),
  (34, 'Natália Vieira'),
  (35, 'Vinícius Duarte'),
  (36, 'Aline Moreira'),
  (37, 'Guilherme Pinto'),
  (38, 'Carla Nogueira'),
  (39, 'Henrique Farias'),
  (40, 'Sabrina Cavalcanti');


INSERT INTO "Funcionario" ("idPessoa", "cargo") 
VALUES 
  (1, 'Caixa'),
  (2, 'Caixa'),
  (3, 'Vendedor'),
  (4, 'Estoquista'),
  (5, 'Gerente'),
  (6, 'Vendedor'),
  (7, 'Gerente'),
  (8, 'Vendedor'),
  (9, 'Estoquista'),
  (10, 'Vendedor'),
  (11, 'Caixa'),
  (12, 'Estoquista'),
  (13, 'Gerente'),
  (14, 'Gerente'),
  (15, 'Vendedor'),
  (16, 'Estoquista'),
  (17, 'Caixa'),
  (18, 'Estoquista'),
  (19, 'Estoquista'),
  (20, 'Estoquista');


INSERT INTO "Cliente" ("idPessoa") 
VALUES 
  (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38), (39), (40);


INSERT INTO "Produto" ("idProduto", "precoItem", "idTipoProduto") 
VALUES 
  (1, 12.50, 1),
  (2, 45.90, 2),
  (3, 129.90, 3),
  (4, 8.75, 4),
  (5, 18.40, 5),
  (6, 89.00, 6),
  (7, 54.90, 7),
  (8, 9.99, 8),
  (9, 32.50, 9),
  (10, 115.00, 10),
  (11, 7.50, 11),
  (12, 14.20, 12),
  (13, 6.80, 13),
  (14, 11.30, 14),
  (15, 79.90, 15),
  (16, 5.50, 16),
  (17, 15.00, 17),
  (18, 210.00, 18),
  (19, 48.00, 19),
  (20, 39.90, 20);


INSERT INTO "Venda" ("idVenda", "dataVenda", "idFuncionario", "idCliente", "valorTotal")
VALUES
  (1, '2025-12-23', 1, 21, 12.50),
  (2, '2026-05-30', 2, 22, 91.80),
  (3, '2026-10-26', 3, 23, 389.70),
  (4, '2026-01-10', 4, 24, 35.00),
  (5, '2026-07-29', 5, 25, 92.00),
  (6, '2026-11-07', 6, 26, 534.00),
  (7, '2026-10-14', 7, 27, 384.30),
  (8, '2026-09-07', 8, 28, 79.92),
  (9, '2026-02-10', 9, 29, 292.50),
  (10, '2026-10-05', 10, 30, 1150.00),
  (11, '2026-09-05', 11, 31, 82.50),
  (12, '2026-07-29', 12, 32, 170.40),
  (13, '2026-01-05', 13, 33, 88.40),
  (14, '2026-08-19', 14, 34, 158.20),
  (15, '2026-01-16', 15, 35, 1198.50),
  (16, '2026-03-06', 16, 36, 88.00),
  (17, '2026-01-29', 17, 37, 255.00),
  (18, '2026-03-07', 18, 38, 3780.00),
  (19, '2026-09-13', 19, 39, 912.00),
  (20, '2026-11-09', 20, 40, 798.00);


INSERT INTO "ItemVenda" ("idItemVenda", "idVenda", "idProduto", "quantidadeItem", "precoItem") 
VALUES 
  (1, 1, 1, 1, 12.50),
  (2, 2, 2, 2, 45.90),
  (3, 3, 3, 3, 129.90),
  (4, 4, 4, 4, 8.75),
  (5, 5, 5, 5, 18.40),
  (6, 6, 6, 6, 89.00),
  (7, 7, 7, 7, 54.90),
  (8, 8, 8, 8, 9.99),
  (9, 9, 9, 9, 32.50),
  (10, 10, 10, 10, 115.00),
  (11, 11, 11, 11, 7.50),
  (12, 12, 12, 12, 14.20),
  (13, 13, 13, 13, 6.80),
  (14, 14, 14, 14, 11.30),
  (15, 15, 15, 15, 79.90),
  (16, 16, 16, 16, 5.50),
  (17, 17, 17, 17, 15.00),
  (18, 18, 18, 18, 210.00),
  (19, 19, 19, 19, 48.00),
  (20, 20, 20, 20, 39.90);

INSERT INTO "VendaPagamento" ("idVenda", "idFormaPagamento")
VALUES
  (1, 3), (2, 4), (3, 5), (4, 1), (5, 3), (6, 5), (7, 4), (8, 3), (9, 6), (10, 5), (11, 1), (12, 7), (13, 3), (14, 4), (15, 5), (16, 8), (17, 3), (18, 5), (19, 9), (20, 10);


UPDATE "Pessoa"
SET nome = 'Maria Santos'
WHERE idPessoa = 40;

DELETE FROM "FormaPagamento"
WHERE idFormaPagamento = 21;
