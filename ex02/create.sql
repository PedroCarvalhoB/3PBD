CREATE DATABASE ClinicaDeEstetica;
USE ClinicaDeEstetica;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome CHAR(100),
    telefone CHAR(20),
    email CHAR(100),
    cartao_credito CHAR(30),
    saldo_credito INT
);

CREATE TABLE FilaDeEspera (
    id_fila INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_cliente INT,
    hora_entrada CHAR(10),
    status CHAR(20),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    valor DOUBLE,
    forma_pagamento CHAR(20),
    data_pagamento CHAR(10),
    status_pagamento CHAR(20)
);

CREATE TABLE Profissional (
    id_profissional INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome CHAR(100),
    telefone CHAR(20),
    email CHAR(100),
    expediente CHAR(50)
);

CREATE TABLE Especialidade (
    id_especialidade INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_especialidade CHAR(100)
);

CREATE TABLE Especialidade_Profissional (
    id_especialidadeProfissional INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_profissional INT,
    id_especialidade INT,
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id_profissional),
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_especialidade INT,
    nome_servico CHAR(100),
    descricao CHAR(255),
    duracao INT,
    preco DOUBLE,
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Reserva (
    id_reserva INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_cliente INT,
    id_servico INT,
    id_pagamento INT,
    id_profissional INT,
    data_reserva CHAR(10),
    hora_reserva CHAR(10),
    status CHAR(20),
    valor_pago DOUBLE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico),
    FOREIGN KEY (id_pagamento) REFERENCES Pagamento(id_pagamento),
    FOREIGN KEY (id_profissional) REFERENCES Profissional(id_profissional)
);

CREATE TABLE Pacote (
    id_pacote INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_pacote CHAR(100),
    descricao CHAR(255)
);

CREATE TABLE Pacote_Servico (
    id_pacote_servico INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_pacote INT,
    id_servico INT,
    desconto_servico DOUBLE,
    FOREIGN KEY (id_pacote) REFERENCES Pacote(id_pacote),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE Reserva_Pacote_Servico (
    id_reserva_pacote_servico INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_reserva INT,
    id_pacote_servico INT,
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id_reserva),
    FOREIGN KEY (id_pacote_servico) REFERENCES Pacote_Servico(id_pacote_servico)
);
