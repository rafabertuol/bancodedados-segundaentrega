### Trigger para Log de Alterações ###
-- Esta trigger registra cada inserção na tabela tb_usuario_app em uma tabela de 
-- logs (que você pode criar como tb_logs com colunas como id_usuario, acao e data_acao).

use db_senior_reservas_app;

DELIMITER //

CREATE TRIGGER trg_log_insert_usuario
AFTER INSERT ON tb_usuario
FOR EACH ROW
BEGIN
    INSERT INTO tb_logs (id, acao, data_acao)
    VALUES (NEW.id, 'INSERT', NOW());
END;
//

DELIMITER ;

### Gatilho para acusar erro na inserção de preço ###

-- Este gatilho entrega mensagem de erro quando for inserido valores negativos

-- tabela tb_preco.

DELIMITER $$

CREATE TRIGGER tg_ControlePreco
BEFORE UPDATE ON tb_preco
FOR EACH ROW
BEGIN
    DECLARE msg_erro VARCHAR(150);
    IF NEW.preco_diaria < 0 THEN
        SET msg_erro = 'ERRO: NÃO É PERMITIDO PREÇO MENOR DE VALOR NEGATIVO';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg_erro;
    END IF;
END $$

DELIMITER ;
