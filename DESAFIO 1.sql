-- CRIANDO AS TABELAS 
create table "production.productCategory"
(
	ID_CATEGORIA   varchar(30),
	NOME_CATEGORIA varchar(30) NOT NULL,
)

create table "production.productInventory"
(	
		ID_INVENTARIO INT NOT NULL,
		QUANTIDADE    INT NOT NULL,
		DATA_VALIDADE DATE ,
		DATA_CADASTRO DATE NOT NULL,
)
------------------------------
--INSERINDO DADOS NAS TABELAS
INSERT INTO [production.productCategory]
(ID_CATEGORIA,NOME_CATEGORIA)
VALUES(1,'ELETRONICOS');

SELECT * FROM [production.productCategory]
--------------------------------------------------------------
INSERT INTO [production.productInventory]
( ID_INVENTARIO,QUANTIDADE,DATA_VALIDADE,DATA_CADASTRO)
VALUES(1,10,NULL,GETDATE());

SELECT NOME,ID_INVENTARIO,QUANTIDADE,DATA_CADASTRO
FROM [production.productInventory]
INNER JOIN [production.product] ON id_produto = ID_INVENTARIO
-------------------------------------------------------------
-- E MOSTRANDO O NOME DO PRODUTO A CATEGORIA E A QUANTIDADE EM ESTOQUE
SELECT NOME,NOME_CATEGORIA,QUANTIDADE AS "QUANTIDADE EM ESTOQUE"
FROM [production.product]
	INNER JOIN [production.productCategory] ON id_categoria = ID_PRODUTO
	INNER JOIN [production.productInventory] ON ID_INVENTARIO = id_produto
	-------------------------------------------------------------------------

SELECT * FROM [production.product];