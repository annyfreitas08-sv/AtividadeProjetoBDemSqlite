PRAGMA foreign_keys = ON;

UPDATE marca
SET nome = 'Toyota Brasil'
WHERE id_marca = 1;

UPDATE modelo
SET nome_modelo = 'Corolla Cross'
WHERE id_modelo = 1;

UPDATE veiculo
SET preco = 125000
WHERE id_veiculo = 1;

UPDATE vendedor
SET classificacao = 'Diamante'
WHERE id_vendedor = 1;

UPDATE cliente
SET telefone = '85912345678'
WHERE id_cliente = 1;	