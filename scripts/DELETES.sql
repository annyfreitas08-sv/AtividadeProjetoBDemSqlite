PRAGMA foreign_keys = ON;

DELETE FROM pagamento
WHERE id_venda = 2;

DELETE FROM pos_venda
WHERE id_venda = 2;

DELETE FROM venda
WHERE id = 2;

DELETE FROM acessibilidade
WHERE id_cliente = 1;

DELETE FROM cliente
WHERE id_cliente = 2;