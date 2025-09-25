-- =========================
-- PACIENTES
-- =========================
INSERT INTO Paciente (Nome, dataNascimento, Sexo, CPF, Endereco, Email, Convenio, Telefone)
VALUES ('Ana Paula Souza', '1990-05-12', 'F', '12345678900', 'Rua A, 123', 'ana.souza@email.com', 'Unimed',
        '(11) 91234-5678'),
       ('Carlos Mendes', '1985-11-30', 'M', '98765432100', 'Rua B, 456', 'carlos.mendes@email.com', 'Bradesco Saúde',
        '(11) 93456-7890'),
       ('Mariana Oliveira', '2002-07-18', 'F', '45678912300', 'Rua C, 789', 'mariana.oliveira@email.com', 'Particular',
        '(11) 97654-3210'),
       ('Roberto Lima', '1978-09-25', 'M', '74185296300', 'Rua D, 321', 'roberto.lima@email.com', 'SulAmérica',
        '(11) 98877-1122'),
       ('Juliana Ferreira', '1995-03-14', 'F', '15975348600', 'Rua E, 654', 'juliana.ferreira@email.com', 'Unimed',
        '(11) 97788-3344'),
       ('Felipe Santos', '2010-12-02', 'M', '32165498700', 'Rua F, 987', 'felipe.santos@email.com', 'Bradesco Saúde',
        '(11) 96655-2233'),
       ('Beatriz Ramos', '1988-01-22', 'F', '85296374100', 'Rua G, 147', 'beatriz.ramos@email.com', 'Unimed',
        '(11) 98888-1122'),
       ('Lucas Pereira', '1992-08-30', 'M', '96385274100', 'Rua H, 258', 'lucas.pereira@email.com', 'Particular',
        '(11) 97777-3344'),
       ('Sofia Almeida', '2000-06-12', 'F', '14725836900', 'Rua I, 369', 'sofia.almeida@email.com', 'Bradesco Saúde',
        '(11) 96666-2233'),
       ('Gustavo Martins', '1980-04-05', 'M', '36925814700', 'Rua J, 741', 'gustavo.martins@email.com', 'SulAmérica',
        '(11) 95555-6677');

-- =========================
-- MÉDICOS
-- =========================
INSERT INTO Medico (Nome, Especialidade, CRM, Email)
VALUES ('Dr. Ricardo Oliveira', 'Cardiologia', '12365-SP', 'ricardo.oliveira@email.com'),
       ('Dra. Fernanda Costa', 'Pediatria', '54321-SP', 'fernanda.costa@email.com'),
       ('Dr. João Martins', 'Ortopedia', '11223-SP', 'joao.martins@email.com'),
       ('Dra. Camila Ribeiro', 'Ginecologia', '33445-SP', 'camila.ribeiro@email.com'),
       ('Dr. Pedro Almeida', 'Neurologia', '77889-SP', 'pedro.almeida@email.com');

-- =========================
-- MEDICAMENTOS
-- =========================
INSERT INTO Medicamento (Nome, Dosagem, Fabricante, Estoque)
VALUES ('Dipirona', '500mg', 'EMS', 200),
       ('Amoxicilina', '500mg', 'Aché', 150),
       ('Losartana', '50mg', 'Medley', 100),
       ('Paracetamol', '750mg', 'Neo Química', 250),
       ('Omeprazol', '20mg', 'Eurofarma', 180);

-- =========================
-- CONSULTAS
-- =========================
INSERT INTO Consulta (id_Paciente, id_Medico, dataHora, Diagnostico)
VALUES (1, 2, '2025-02-10 09:00:00', 'Gripe'),
       (2, 3, '2025-01-22 14:30:00', 'Fratura no braço esquerdo'),
       (3, 1, '2025-03-05 11:00:00', 'Arritmia leve'),
       (4, 5, '2025-04-10 10:00:00', 'Enxaqueca crônica'),
       (5, 4, '2025-02-18 08:30:00', 'Exame preventivo'),
       (6, 2, '2025-03-20 09:30:00', 'Amigdalite'),
       (7, 1, '2025-01-15 13:00:00', 'Hipertensão'),
       (8, 3, '2025-02-25 15:00:00', 'Lesão no joelho'),
       (9, 4, '2025-03-12 10:30:00', 'Dor abdominal'),
       (10, 5, '2025-04-05 11:45:00', 'Enxaqueca');

-- =========================
-- EXAMES
-- =========================
INSERT INTO Exame (tipoExame, id_Medico, id_Paciente, dataExame, Resultado)
VALUES ('Hemograma', 2, 1, '2025-02-10 09:30:00', 'Normal'),
       ('Raio-X', 3, 2, '2025-01-22 15:00:00', 'Fratura no braço esquerdo'),
       ('Eletrocardiograma', 1, 3, '2025-03-05 11:30:00', 'Arritmia leve'),
       ('Ressonância Magnética', 5, 4, '2025-04-11 10:30:00', 'Normal'),
       ('Ultrassom Pélvico', 4, 5, '2025-02-19 09:00:00', 'Normal'),
       ('Hemograma', 2, 6, '2025-03-21 10:00:00', 'Infecção detectada'),
       ('Exame de sangue', 1, 7, '2025-01-15 13:30:00', 'Colesterol alto'),
       ('Raio-X', 3, 8, '2025-02-25 15:30:00', 'Lesão leve no joelho'),
       ('Ultrassom', 4, 9, '2025-03-12 11:00:00', 'Normal'),
       ('Tomografia', 5, 10, '2025-04-05 12:15:00', 'Alteração vascular');

-- =========================
-- PRESCRIÇÕES
-- =========================
INSERT INTO Prescricao (id_Consulta, id_Medicamento, Quantidade, Instrucoes)
VALUES (1, 1, 10, '1 comprimido a cada 8h'),
       (2, 2, 14, '1 comprimido a cada 12h por 7 dias'),
       (3, 3, 30, '1 comprimido ao dia'),
       (4, 4, 10, '1 comprimido a cada 6h se dor persistir'),
       (5, 5, 0, 'Nenhuma'),
       (6, 2, 20, '1 comprimido a cada 12h por 10 dias'),
       (7, 3, 30, '1 comprimido ao dia'),
       (8, 2, 14, '1 comprimido a cada 12h por 7 dias'),
       (9, 5, 15, '1 comprimido ao dia'),
       (10, 4, 10, '1 comprimido se dor persistir');

-- =========================
-- QUARTOS
-- =========================
INSERT INTO Quarto (tipo_Quarto, Numero, Status)
VALUES ('Enfermaria', 101, 'Livre'),
       ('Enfermaria', 102, 'Ocupado'),
       ('Enfermaria', 103, 'Livre'),
       ('Apartamento', 201, 'Ocupado'),
       ('Apartamento', 202, 'Livre'),
       ('Apartamento', 203, 'Ocupado'),
       ('UTI', 301, 'Ocupado'),
       ('UTI', 302, 'Livre'),
       ('UTI', 303, 'Ocupado'),
       ('Enfermaria', 104, 'Livre');

-- =========================
-- ENFERMEIROS
-- =========================
INSERT INTO Enfermeiro (Nome, Funcao, cargaHoraria)
VALUES ('Mariana Costa', 'Enfermeira Chefe', 40),
       ('Lucas Silva', 'Enfermeiro', 36),
       ('Beatriz Almeida', 'Enfermeira', 32),
       ('Pedro Santos', 'Técnico de Enfermagem', 30),
       ('Camila Rodrigues', 'Enfermeira', 38),
       ('Gustavo Lima', 'Técnico de Enfermagem', 28),
       ('Fernanda Souza', 'Enfermeira Chefe', 40),
       ('Rafael Pereira', 'Enfermeiro', 36),
       ('Juliana Martins', 'Enfermeira', 34),
       ('Carlos Oliveira', 'Técnico de Enfermagem', 30);
