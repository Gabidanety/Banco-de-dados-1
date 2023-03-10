USE bdEstoque

--1 A soma das quantidades dos produtos em estoque que são do fabricante P&G
	SELECT SUM (quantidadeProduto) AS 'Somatoria dos produtos PeG'FROM tbProduto
		WHERE codFabricante = 2

-- 2 A média de preços dos produtos que são da P&G
	SELECT AVG (valorProduto) AS 'Média dos produtos PeG' FROM tbProduto
		WHERE codFabricante = 2

--3 A soma do preço dos produtos da Unilever
	SELECT SUM (quantidadeProduto) AS 'Somatori dos produtos unilever'FROM tbProduto
		WHERE codFabricante = 1

--4 O preço médio dos produtos da Bunge
	SELECT AVG (valorProduto) AS 'Média dos produtos Bunge' FROM tbProduto
		WHERE codFabricante = 3

--5 A soma das quantidades de todos os produtos que são da Bunge
	SELECT SUM (quantidadeProduto) AS 'Média dos produtos Bunge' FROM tbProduto
		WHERE codFabricante = 3

--6 A quantidade media dos produtos da P&G no estoque
	SELECT AVG (quantidadeProduto) AS 'M�dia dos Produtos' FROM tbProduto
		WHERE codFabricante =2

-- 7 O preco medio dos produtos no estoque cuja quantidade seja inferior a 200
	SELECT AVG (valorProduto) AS 'Valor Produto' FROM tbProduto 
		WHERE valorProduto<200

-- 8 A quantidade media de todos os produtos no estoque que sejam fabricados pela Unilever
	SELECT AVG (valorProduto) AS 'Valor Produto' FROM tbProduto 
		WHERE codFabricante =2

--9 O valor do produto mais barato
	SELECT MIN (valorProduto) AS 'Produto mais barato' FROM tbProduto

--10 Quantos itens no estoque são da unilever
	SELECT  COUNT(DISTINCT quantidadeProduto) AS 'Itens da Unilever' FROM tbProduto,tbFabricante
		WHERE codFabricante = 2
