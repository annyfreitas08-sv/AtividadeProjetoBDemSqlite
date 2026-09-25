PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS marca (
    id_marca INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_categoria TEXT NOT NULL,
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS modelo (
    id_modelo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_modelo TEXT NOT NULL,
    id_marca INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marca(id_marca),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS veiculo (
    id_veiculo INTEGER PRIMARY KEY AUTOINCREMENT,
    placa TEXT NOT NULL UNIQUE,
    ano INTEGER NOT NULL,
    cor TEXT NOT NULL,
    preco REAL NOT NULL,
    id_modelo INTEGER NOT NULL,
    FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo)
);

CREATE TABLE IF NOT EXISTS carro (
    id_carro INTEGER PRIMARY KEY AUTOINCREMENT,
    qtd_portas INTEGER NOT NULL,
    combustivel TEXT NOT NULL,
    cambio TEXT NOT NULL,
    id_veiculo INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS moto (
    id_moto INTEGER PRIMARY KEY AUTOINCREMENT,
    cilindrada INTEGER NOT NULL,
    tipo TEXT NOT NULL,
    id_veiculo INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    telefone TEXT,
    email TEXT
);

CREATE TABLE IF NOT EXISTS vendedor (
    id_vendedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    telefone TEXT,
    email TEXT,
    classificacao TEXT
);

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    telefone TEXT,
    email TEXT
);

CREATE TABLE IF NOT EXISTS acessibilidade (
    id_cliente INTEGER PRIMARY KEY,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda TEXT NOT NULL,
    valor REAL NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_veiculo INTEGER NOT NULL,
    id_vendedor INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

CREATE TABLE IF NOT EXISTS pos_venda (
    id_posvenda INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo_servico TEXT NOT NULL,
    data_atendimento TEXT NOT NULL,
    nota_avaliacao INTEGER,
    id_venda INTEGER NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pagamento (
    id_pagamento INTEGER PRIMARY KEY AUTOINCREMENT,
    forma_pagamento TEXT NOT NULL,
    status_pagamento TEXT NOT NULL,
    valor_pago REAL NOT NULL,
    id_venda INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS patrocinadores (
    id_patrocinador INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cnpj TEXT NOT NULL UNIQUE,
    telefone TEXT,
    tipo_patrocinio TEXT
);

CREATE TABLE IF NOT EXISTS lojas (
    id_loja INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    cidade TEXT NOT NULL,
    estado TEXT NOT NULL
);