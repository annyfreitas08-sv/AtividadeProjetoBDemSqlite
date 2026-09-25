PRAGMA foreign_keys = ON;

INSERT INTO marca (nome) VALUES
('Toyota'),
('Honda'),
('Yamaha');

INSERT INTO categoria (nome_categoria, descricao) VALUES
('Sedã', 'Carros de passeio'),
('SUV', 'Utilitário esportivo'),
('Motocicleta', 'Veículos de duas rodas');

INSERT INTO modelo (nome_modelo, id_marca, id_categoria) VALUES
('Corolla', 1, 1),
('HR-V', 2, 2),
('Factor 150', 3, 3);

INSERT INTO veiculo (placa, ano, cor, preco, id_modelo) VALUES
('ABC1234', 2023, 'Prata', 120000, 1),
('DEF5678', 2024, 'Branco', 145000, 2),
('GHI9012', 2025, 'Azul', 18000, 3);

INSERT INTO carro (qtd_portas, combustivel, cambio, id_veiculo) VALUES
(4, 'Flex', 'Automático', 1),
(4, 'Flex', 'CVT', 2);

INSERT INTO moto (cilindrada, tipo, id_veiculo) VALUES
(150, 'Street', 3);

INSERT INTO fornecedor (nome, cnpj, telefone, email) VALUES
('Auto Peças Brasil', '11111111000101', '85999990001', 'contato@autobrasil.com'),
('Moto Supply', '22222222000102', '85999990002', 'vendas@motosupply.com');

INSERT INTO vendedor (nome, cpf, telefone, email, classificacao) VALUES
('Ana Silva', '11111111111', '85911111111', 'ana@email.com', 'Ouro'),
('Carlos Souza', '22222222222', '85922222222', 'carlos@email.com', 'Prata');

INSERT INTO cliente (nome, cpf, telefone, email) VALUES
('João Pereira', '33333333333', '85933333333', 'joao@email.com'),
('Maria Costa', '44444444444', '85944444444', 'maria@email.com');

INSERT INTO acessibilidade (id_cliente) VALUES
(1);

INSERT INTO venda (data_venda, valor, id_cliente, id_veiculo, id_vendedor) VALUES
('2026-09-10', 120000, 1, 1, 1),
('2026-09-12', 145000, 2, 2, 2);

INSERT INTO pos_venda (tipo_servico, data_atendimento, nota_avaliacao, id_venda) VALUES
('Revisão', '2026-09-20', 10, 1),
('Troca de óleo', '2026-09-22', 9, 2);

INSERT INTO pagamento (forma_pagamento, status_pagamento, valor_pago, id_venda) VALUES
('PIX', 'Pago', 120000, 1),
('Financiamento', 'Em andamento', 50000, 2);

INSERT INTO patrocinadores (nome, cnpj, telefone, tipo_patrocinio) VALUES
('Banco Auto', '55555555000105', '85955555555', 'Financeiro'),
('Seguro Max', '66666666000106', '85966666666', 'Seguro');

INSERT INTO lojas (nome, endereco, cidade, estado) VALUES
('Loja Centro', 'Rua A, 100', 'Aracati', 'CE'),
('Loja Norte', 'Rua B, 200', 'Fortaleza', 'CE');