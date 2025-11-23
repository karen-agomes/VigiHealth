-- Inserts para a tabela Paciente
INSERT INTO Paciente (id_paciente, nome, data_nascimento, sexo, cpf, telefone, endereco) VALUES
(1, 'Mariana Alves', '1990-04-15', 'F', '12345678900', '41988887777', 'Rua das Flores, 120'),
(2, 'João Silva', '1985-09-22', 'M', '98765432100', '41999996666', 'Av. Brasil, 450'),
(3, 'Carla Mendes', '2001-02-10', 'F', '11122233344', '41977778888', 'Rua Projetada, 90');

-- Inserts para a tabela UnidadeSaude
INSERT INTO UnidadeSaude (id_unidade, nome, tipo_unidade, municipio) VALUES
(1, 'UBS Central', 'UBS', 'Curitiba'),
(2, 'Hospital Municipal Norte', 'Hospital', 'Colombo'),
(3, 'UPA Boqueirão', 'UPA', 'Curitiba');

-- Inserts para a tabela Profissional
INSERT INTO Profissional (id_profissional, nome, cbo, id_unidade) VALUES
(1, 'Ana Pereira', '2231', 1),
(2, 'Lucas Santos', '2251', 2),
(3, 'Beatriz Souza', '2235', 1);

-- Inserts para a tabela Doenca
INSERT INTO Doenca (id_doenca, nome_doenca, cid10) VALUES
(1, 'Dengue', 'A90'),
(2, 'Influenza A', 'J09'),
(3, 'COVID-19', 'U07.1');

-- Inserts para a tabela Notificacao
INSERT INTO Notificacao (id_notificacao, data_notificacao, classificacao_caso, id_paciente, id_doenca, id_profissional, id_unidade)
VALUES
(1, '2025-01-05', 'Suspeito', 1, 1, 1, 1),
(2, '2025-01-07', 'Confirmado', 2, 3, 2, 2),
(3, '2025-01-10', 'Descartado', 3, 2, 3, 1);

-- Inserts para a tabela ResultadoLaboratorial
INSERT INTO ResultadoLaboratorial (id_resultado, tipo_exame, data_exame, resultado, id_notificacao) VALUES
(1, 'PCR', '2025-01-06', 'Positivo', 1),
(2, 'Teste Rápido', '2025-01-08', 'Negativo', 2),
(3, 'Sorologia', '2025-01-11', 'Indeterminado', 3);
