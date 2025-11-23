-- 1. Selecionar todas as notificações com o nome do paciente e da doença
SELECT n.id_notificacao, p.nome AS paciente, d.nome_doenca, n.data_notificacao
FROM Notificacao n
JOIN Paciente p ON n.id_paciente = p.id_paciente
JOIN Doenca d ON n.id_doenca = d.id_doenca
ORDER BY n.data_notificacao;

-- 2. Buscar notificações apenas de Curitiba
SELECT n.id_notificacao, u.municipio, d.nome_doenca
FROM Notificacao n
JOIN UnidadeSaude u ON n.id_unidade = u.id_unidade
JOIN Doenca d ON d.id_doenca = n.id_doenca
WHERE u.municipio = 'Curitiba';

-- 3. Pacientes do sexo feminino ordenados pelo nome
SELECT nome, cpf, telefone
FROM Paciente
WHERE sexo = 'F'
ORDER BY nome ASC;

-- 4. Resultados laboratoriais com JOIN
SELECT r.id_resultado, r.tipo_exame, r.resultado, d.nome_doenca
FROM ResultadoLaboratorial r
JOIN Notificacao n ON r.id_notificacao = n.id_notificacao
JOIN Doenca d ON n.id_doenca = d.id_doenca;

-- 5. Limitar as 2 primeiras notificações cadastradas
SELECT *
FROM Notificacao
ORDER BY data_notificacao
LIMIT 2;
