CREATE TABLE IF NOT EXISTS usuario (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha TEXT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS cliente (
    id VARCHAR(20) PRIMARY KEY,
    nome_fantasia VARCHAR(150),
    razao_social VARCHAR(150),
    cpf_cnpj VARCHAR(14) NOT NULL UNIQUE,
    tipo VARCHAR(10) NOT NULL CHECK (tipo IN ('juridico', 'fisico')),
    email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao TEXT NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    codigo_barra CHAR(13) NOT NULL UNIQUE
        CHECK (codigo_barra ~ '^[0-9]{13}$'),
    preco NUMERIC(12, 2) NOT NULL CHECK (preco >= 0)
);
