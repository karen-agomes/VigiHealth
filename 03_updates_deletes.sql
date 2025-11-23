-- Atualizar telefone de um paciente
UPDATE Paciente
SET telefone = '41955554444'
WHERE id_paciente = 1;

-- Atualizar classificação de caso
UPDATE Notificacao
SET classificacao_caso = 'Confirmado'
WHERE id_notificacao = 1;

-- Atualizar resultado laboratorial
UPDATE ResultadoLaboratorial
SET resultado = 'Positivo'
WHERE id_resultado = 3;

-- Deletar um resultado laboratorial
DELETE FROM ResultadoLaboratorial
WHERE id_resultado = 2;

-- Deletar uma notificação descartada
DELETE FROM Notificacao
WHERE classificacao_caso = 'Descartado';

-- Deletar um profissional que não possui notificações vinculadas
DELETE FROM Profissional
WHERE id_profissional = 3;
