CREATE DATABASE Hospital;
USE Hospital;


CREATE TABLE Paciente
(
    id_Paciente    INT AUTO_INCREMENT PRIMARY KEY,
    Nome           VARCHAR(50) NOT NULL,
    dataNascimento DATE        NOT NULL,
    Sexo           CHAR(1)     NOT NULL CHECK (Sexo IN ('M', 'F')),
    CPF            CHAR(11)    NOT NULL UNIQUE,
    Endereco       VARCHAR(50),
    Email          VARCHAR(50) UNIQUE,
    Convenio       VARCHAR(50),
    Telefone VARCHAR(20)
);

CREATE TABLE Medico
(
    id_Medico     INT AUTO_INCREMENT PRIMARY KEY,
    Nome          VARCHAR(50)  NOT NULL,
    Especialidade VARCHAR(50)  NOT NULL,
    CRM           VARCHAR(100) NOT NULL UNIQUE,
    Email         VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Consulta
(
    id_Consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_Paciente INT      NOT NULL,
    id_Medico   INT      NOT NULL,
    dataHora    DATETIME NOT NULL,
    Diagnostico VARCHAR(100),
    FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente),
    FOREIGN KEY (id_Medico) REFERENCES Medico (id_Medico)
);

CREATE TABLE Enfermeiro
(
    id_Enfermeiro INT AUTO_INCREMENT PRIMARY KEY,
    Nome          VARCHAR(50) NOT NULL,
    Funcao        VARCHAR(50) NOT NULL,
    cargaHoraria  INT CHECK (cargaHoraria between 0 AND 48)
);

CREATE TABLE Quarto
(
    id_Quarto   INT AUTO_INCREMENT PRIMARY KEY,
    tipo_Quarto VARCHAR(50) NOT NULL CHECK (tipo_Quarto IN ('Enfermaria', 'UTI', 'Apartamento')),
    Numero      INT(3)      NOT NULL,
    Status      VARCHAR(10) NOT NULL CHECK (status IN ('Ocupado', 'Livre'))
);

CREATE TABLE Exame
(
    id_Exame    INT AUTO_INCREMENT PRIMARY KEY,
    tipoExame   VARCHAR(50)  NOT NULL,
    id_Medico   INT          NOT NULL,
    id_Paciente INT          NOT NULL,
    dataExame   DATETIME     NOT NULL,
    Resultado   VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_Medico) REFERENCES Medico (id_Medico),
    FOREIGN KEY (id_Paciente) REFERENCES Paciente (id_Paciente)
);

CREATE TABLE Medicamento
(
    id_Medicamento INT AUTO_INCREMENT PRIMARY KEY,
    Nome           VARCHAR(50) NOT NULL,
    Dosagem        VARCHAR(10) NOT NULL,
    Fabricante     VARCHAR(50) NOT NULL,
    Estoque        INT(100)
);

CREATE TABLE Prescricao
(
    id_Prescricao  INT AUTO_INCREMENT PRIMARY KEY,
    id_Consulta    INT NOT NULL,
    id_Medicamento INT NOT NULL,
    Quantidade     INT NOT NULL,
    Instrucoes     VARCHAR(50),
    FOREIGN KEY (id_Consulta) REFERENCES Consulta (id_Consulta),
    FOREIGN KEY (id_Medicamento) REFERENCES Medicamento (id_Medicamento)
);