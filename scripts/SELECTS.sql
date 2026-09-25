SELECT veiculo.id_veiculo, veiculo.placa, modelo.nome_modelo
FROM veiculo
JOIN modelo ON veiculo.id_modelo = modelo.id_modelo
ORDER BY veiculo.placa ASC;

SELECT modelo.nome_modelo, marca.nome AS marca
FROM modelo
JOIN marca ON modelo.id_marca = marca.id_marca
ORDER BY marca.nome, modelo.nome_modelo;

SELECT cliente.nome AS cliente, venda.valor
FROM venda
JOIN cliente ON venda.id_cliente = cliente.id_cliente
ORDER BY cliente.nome;

SELECT vendedor.nome AS vendedor, COUNT(venda.id_venda) AS total_vendas
FROM vendedor
JOIN venda ON venda.id_vendedor = vendedor.id_vendedor
GROUP BY vendedor.id_vendedor, vendedor.nome;

SELECT pagamento.forma_pagamento, pagamento.status_pagamento, venda.valor
FROM pagamento
JOIN venda ON pagamento.id_venda = venda.id_venda
ORDER BY pagamento.forma_pagamento;