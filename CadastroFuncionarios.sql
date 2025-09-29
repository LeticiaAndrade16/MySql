CREATE DATABASE CadastroFuncionarios;

USE CadastroFuncionarios;

CREATE TABLE Funcionarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAl(10, 2),
    data_contratacao DATE
);


INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Matheus Akerman', 'Analista de Marketing', 4500.00, '2023-03-15'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Bruno Souza', 'Desenvolvedor Back-End', 6200.50, '2022-11-01'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Anastascia Smith', 'Assistente Administrativo', 3100.75, '2024-02-28'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Eduarda Silva', 'Gerente de Projetos', 10500.90, '2020-09-20'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Fábio Torres', 'Analista de Dados', 5800.00, '2023-06-05'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Gabriela Costa', 'Designer UX/UI', 4950.50, '2022-08-12'
);

INSERT INTO Funcionarios(nome, cargo, salario, data_contratacao) VALUES (
	'Isabela Rocha', 'Engenheiro de Software', 7900.25, '2023-12-04'
);


SELECT * FROM Funcionarios;

SELECT * FROM Funcionarios WHERE salario > 5000;

UPDATE Funcionarios SET data_contratacao = '2023-02-10' WHERE id = 5;

UPDATE Funcionarios SET salario = 6500.00 WHERE id = 2;

DELETE FROM Funcionarios WHERE id = 7;

SELECT * FROM Funcionarios ORDER BY salario desc;
