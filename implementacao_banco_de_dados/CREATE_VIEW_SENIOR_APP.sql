-- View para Clientes e Endereços
-- dados dos clientes com os dados do endereço
CREATE VIEW vw_cliente_endereco AS
SELECT 
    c.id AS cliente_id,
    c.nome AS nome_cliente,
    c.sobrenome AS sobrenome_cliente,
    c.cpf AS cpf_cliente,
    c.rg AS rg_cliente,
    e.rua,
    e.numero,
    e.complemento,
    e.bairro,
    e.cidade,
    e.estado,
    e.CEP
FROM 
    tb_cliente c
JOIN 
    tb_enderecos e ON c.id_endereco = e.id;


-- 2. View para Medicamentos por Cliente
-- exemplo de medicamento que cada cliente deve tomar, inclindo a dosagem e horario
CREATE VIEW vw_medicamentos_cliente AS
SELECT 
    c.id AS cliente_id,
    CONCAT(c.nome, ' ', c.sobrenome) AS nome_completo,
    m.nome_medicamento,
    m.dosagem,
    cxm.horario_administracao,
    cxm.periodo,
    cxm.alergia
FROM 
    tb_cliente c
JOIN 
    tb_cliente_x_medicamento cxm ON c.id = cxm.id_cliente
JOIN 
    tb_medicamentos m ON cxm.id_medicamentos = m.id;

-- 3. View para Instituições e Atividades Oferecidas
-- essa view mostra as atividade que são oferecidas

CREATE VIEW vw_instituicao_atividades AS
SELECT 
    i.cnpj AS instituicao_cnpj,
    i.razao_social AS nome_instituicao,
    a.titulo_atividade,
    a.descricao AS descricao_atividade
FROM 
    tb_instituicao i
JOIN 
    tb_atividades a ON i.cnpj = a.id_instituicao;

-- 4. View de Agendamentos por Cliente
-- detalhes do agendamento dos clientes

CREATE VIEW vw_agendamentos_cliente AS
SELECT 
    ag.id AS agendamento_id,
    c.id AS cliente_id,
    CONCAT(c.nome, ' ', c.sobrenome) AS nome_cliente,
    ag.data_hora_inicio,
    ag.data_hora_final,
    atv.titulo_atividade,
    inst.razao_social AS nome_instituicao
FROM 
    tb_cliente c
JOIN 
    tb_agendamento ag ON c.id = ag.id_cliente
JOIN 
    tb_atividades atv ON ag.id_atividades = atv.id
JOIN 
    tb_instituicao inst ON ag.id_instituicao = inst.cnpj;

-- View para Pagamentos e Status
-- pagamentos realizados etc...

CREATE VIEW vw_pagamento_status AS
SELECT 
    p.id AS pagamento_id,
    p.status_pagamento,
    p.transacao_id,
    p.data_pagamento,
    u.nome AS nome_usuario,
    u.sobrenome AS sobrenome_usuario,
    pr.preco_diaria,
    pr.pontuacao_scala_katz
FROM 
    tb_pagamento p
JOIN 
    tb_usuario u ON p.id_usuario = u.id
JOIN 
    tb_preco pr ON p.id_preco = pr.id;