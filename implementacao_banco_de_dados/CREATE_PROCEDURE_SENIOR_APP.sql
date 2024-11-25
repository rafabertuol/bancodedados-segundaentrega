### Procedure para Inserir Cliente e Endereço ###
-- Esta procedure automatiza a inserção de dados em tb_enderecos e tb_usuario_app.
use db_senior_reservas_app;

DELIMITER //
CREATE PROCEDURE sp_inserir_cliente_endereco(
    IN p_nome VARCHAR(300),
    IN p_cpf VARCHAR(15),
    IN p_email VARCHAR(255),
    IN p_senha VARCHAR(255),
    IN p_rua VARCHAR(200),
    IN p_numero INT,
    IN p_complemento VARCHAR(20),
    IN p_bairro VARCHAR(100),
    IN p_cidade VARCHAR(100),
    IN p_estado VARCHAR(2),
    IN p_cep VARCHAR(10)
)
BEGIN
    DECLARE id_endereco INT;

    -- Inserir endereço
    INSERT INTO tb_enderecos (rua, numero, complemento, bairro, cidade, estado, CEP)
    VALUES (p_rua, p_numero, p_complemento, p_bairro, p_cidade, p_estado, p_cep);
    
    SET id_endereco = LAST_INSERT_ID();

    -- Inserir cliente
    INSERT INTO tb_usuario_app (nome_completo, cpf, email, senha, id_endereco)
    VALUES (p_nome, p_cpf, p_email, p_senha, id_endereco);
END //
DELIMITER ;


## Procedure para Consultar Medicamentos de um  ###
-- Esta procedure retorna os medicamentos associados a um cliente específico, incluindo informações como horário de administração e alergias.

DELIMITER //
CREATE PROCEDURE sp_consultar_medicamentos_cliente(IN p_cliente_id INT)
BEGIN
    SELECT 
        m.nome_medicamento,
        m.dosagem,
        cxm.horario_administracao,
        cxm.periodo,
        cxm.alergia
    FROM 
        tb_cliente_x_medicamento cxm
    JOIN 
        tb_medicamentos m ON cxm.id_medicamentos = m.id
    WHERE 
        cxm.id_cliente = p_cliente_id;
END //
DELIMITER ;

### Procedure para automatizar a alteração de preço ###

-- Esta procedure automatiza a alteração de preço na tabela tb_preco.

DELIMITER $$

CREATE PROCEDURE sp_atualizar_preco
(
    IN NovoPreco DECIMAL(10,2),
    IN ID INT
)
BEGIN
    UPDATE tb_preco
    SET preco_diaria = NovoPreco
    WHERE ID_Preco = ID;
END $$

DELIMITER ;

