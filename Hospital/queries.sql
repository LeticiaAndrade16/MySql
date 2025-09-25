USE hospital;

SELECT * FROM Paciente;
SELECT * FROM medico;


SELECT c.id_consulta, p.nome AS paciente, m.nome AS medico, c.diagnostico, c.dataHora
FROM Consulta c JOIN Paciente p ON c.id_paciente = p.id_paciente JOIN Medico m ON c.id_medico = m.id_medico;

SELECT convenio, COUNT(*) AS total_pacientes FROM Paciente GROUP BY convenio;

SELECT * FROM medicamento;

SELECT  COUNT(*) AS Quartos_Livre FROM quarto WHERE Status = 'Livre';

SELECT e.tipoExame, e.dataExame, e.Resultado, p.Nome AS Paciente, m.Nome AS Medico
FROM Exame e JOIN Paciente p ON e.id_Paciente = p.id_Paciente JOIN Medico m ON e.id_Medico = m.id_Medico;

SELECT p.Nome AS Paciente, m.Nome AS Medico, med.Nome AS Medicamento, pr.Quantidade, pr.Instrucoes
FROM Prescricao pr JOIN Consulta c ON pr.id_Consulta = c.id_Consulta JOIN Paciente p ON c.id_Paciente = p.id_Paciente
JOIN Medico m ON c.id_Medico = m.id_Medico JOIN Medicamento med ON pr.id_Medicamento = med.id_Medicamento;

SELECT c.id_Consulta, p.Nome AS Paciente, m.Nome AS Medico, c.dataHora
FROM Consulta c JOIN Paciente p ON c.id_Paciente = p.id_Paciente JOIN Medico m ON c.id_Medico = m.id_Medico ORDER BY c.dataHora DESC;

CREATE VIEW ConsultasDetalhadas AS
SELECT c.id_Consulta, p.Nome AS Paciente, m.Nome AS Medico, c.dataHora, c.Diagnostico FROM Consulta c JOIN Paciente p ON c.id_Paciente = p.id_Paciente
JOIN Medico m ON c.id_Medico = m.id_Medico;

SELECT * FROM ConsultasDetalhadas WHERE Medico = 'Dr. Ricardo Oliveira';



