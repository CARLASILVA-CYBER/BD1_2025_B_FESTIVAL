-- Tabela Realizador
CREATE TABLE Realizador (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    nacionalidade VARCHAR(50),
    email VARCHAR(100)
);

-- Tabela Sala de Exibição
CREATE TABLE Sala (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    capacidade INT,
    cidade VARCHAR(100)
);

-- Tabela Festival
CREATE TABLE Festival (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    localizacao VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    sala_id INT UNIQUE,
    realizador_homenageado_id INT UNIQUE,
    FOREIGN KEY (sala_id) REFERENCES Sala(id),
    FOREIGN KEY (realizador_homenageado_id) REFERENCES Realizador(id)
);

-- Tabela Filme
CREATE TABLE Filme (
    id INT PRIMARY KEY,
    titulo VARCHAR(100),
    duracao INT,
    ano_producao INT,
    realizador_id INT,
    FOREIGN KEY (realizador_id) REFERENCES Realizador(id)
);

-- Tabela Patrocinio
CREATE TABLE Patrocinio (
    id INT PRIMARY KEY,
    montante DECIMAL(10,2),
    entidade VARCHAR(100),
    data DATE,
    festival_codigo INT,
    FOREIGN KEY (festival_codigo) REFERENCES Festival(codigo)
);

-- Tabela Participacao (filme apresentado em festival)
CREATE TABLE Participacao (
    festival_codigo INT,
    filme_id INT,
    PRIMARY KEY (festival_codigo, filme_id),
    FOREIGN KEY (festival_codigo) REFERENCES Festival(codigo),
    FOREIGN KEY (filme_id) REFERENCES Filme(id)
);

-- Tabela Premiacao
CREATE TABLE Premiacao (
    festival_codigo INT,
    filme_id INT,
    categoria_premio VARCHAR(100),
    valor_premio DECIMAL(10,2),
    PRIMARY KEY (festival_codigo, filme_id, categoria_premio),
    FOREIGN KEY (festival_codigo) REFERENCES Festival(codigo),
    FOREIGN KEY (filme_id) REFERENCES Filme(id)
);
