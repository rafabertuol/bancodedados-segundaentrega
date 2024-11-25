CREATE SCHEMA db_senior_reservas_app;

USE db_senior_reservas_app;

### 1 - CRIANDO TABELA ENDEREÇOS ONDE SERÁ ARMAZENADO OS ENDEREÇOS: DO USUARIO, DO CLEINTE E DA INSTITUICAO ###

CREATE TABLE tb_enderecos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    rua VARCHAR(50) NOT NULL,
    numero INT NULL CHECK (numero >= 0), -- Número deve ser positivo
    complemento VARCHAR(20) NULL, 
    bairro VARCHAR(20) NOT NULL, 
    cidade VARCHAR(20) NOT NULL, 
    estado CHAR(2) NOT NULL CHECK (estado IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO')), -- Validação de estados brasileiros
    CEP CHAR(8) NOT NULL CHECK (CHAR_LENGTH(CEP) = 8 AND CEP REGEXP '^[0-9]+$'), -- CEP deve ter 8 caracteres numéricos
    PRIMARY KEY(id), -- Chave primária
	INDEX idx_bairro (bairro),
    INDEX idx_cidade (cidade),
    INDEX idx_estado (estado)
);

### 2 - CRIANDO TABELA USUARIO ###

CREATE TABLE tb_usuario (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE, -- CPF deve ter exatamente 11 caracteres
    rg VARCHAR(9) NOT NULL UNIQUE, -- RG com até 9 caracteres
    celular VARCHAR(15) NULL, -- Formato internacional
    email VARCHAR(100) NULL UNIQUE, -- Email único
    senha VARCHAR(10) NOT NULL,
    id_endereco INT UNSIGNED NULL, -- Pode ser nulo se não houver endereço associado
    PRIMARY KEY (id),  -- Chave primária
    CONSTRAINT chk_cpf CHECK (CHAR_LENGTH(cpf) = 11), -- Checa se o CPF tem exatamente 11 caracteres
    CONSTRAINT chk_rg CHECK (CHAR_LENGTH(rg) BETWEEN 7 AND 9), -- RG entre 7 e 9 caracteres
    CONSTRAINT chk_celular CHECK (CHAR_LENGTH(celular) BETWEEN 10 AND 15), -- Celular deve ter entre 10 e 15 caracteres
    FOREIGN KEY (id_endereco) REFERENCES tb_enderecos(id) ON DELETE SET NULL ON UPDATE CASCADE, -- Relacionamento com a tabela de endereços
    INDEX idx_email (email),
    INDEX idx_cpf (cpf),
    INDEX idx_id_endereco (id_endereco)
);

### 3 - CRIANDO TABELA PARA CADASTAR O CLIENTE QUE FARÁ USO DOS SERVIÇOS ###

CREATE TABLE tb_cliente (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    rg VARCHAR(9) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nasc DATE NOT NULL,
    idade INT UNSIGNED NULL CHECK (idade BETWEEN 0 AND 120), -- Idade com restrição entre 0 e 120 anos
    id_usuario INT UNSIGNED NULL,
    id_endereco INT UNSIGNED NULL,
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT chk_cpf_cliente CHECK (CHAR_LENGTH(cpf) = 11), -- Checa se o CPF tem exatamente 11 caracteres
    CONSTRAINT chk_rg_cliente CHECK (CHAR_LENGTH(rg) BETWEEN 7 AND 9), -- RG entre 7 e 9 caracteres, dependendo da região
    FOREIGN KEY (id_endereco) REFERENCES tb_enderecos(id) ON DELETE RESTRICT ON UPDATE CASCADE,-- Relacionamento com a tabela de endereco
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id) ON DELETE RESTRICT ON UPDATE CASCADE, -- Relacionamento com a tabela de usuário
    -- Se o usuario tentar ser excluído o ON DELETE RESTRICT impede a exclusão de uma linha em uma tabela se houver outras linhas que dependam dela, 
    -- e se o id do usuario for atualizado, ele será refletido na tabela cliente devido à cláusula ON UPDATE CASCADE.
	INDEX idx_cpf_cliente (cpf),
    INDEX idx_rg_cliente (rg),
    INDEX idx_id_usuario (id_usuario),
    INDEX idx_id_endereco_cliente (id_endereco)
);

### 4 - CRIANDO TABELA PARA CADASTAR A INSTITUICAO ###

CREATE TABLE tb_instituicao (
    cnpj CHAR(14) NOT NULL,  -- CNPJ deve ter exatamente 14 caracteres
    razao_social VARCHAR(100) NOT NULL,  -- Nome da razão social não pode ser nulo
    nome_fantasia VARCHAR(100),  -- Nome fantasia da instituição (opcional)
    protocolo_alvara_funcionamento VARCHAR(50) NOT NULL,
    qtd_max_pessoas_dia INT NULL CHECK (qtd_max_pessoas_dia >= 0),  -- Checa se a quantidade máxima de pessoas não é negativa
    telefone_1 VARCHAR(15) NOT NULL,  -- Telefone principal
    telefone_2 VARCHAR(15),  -- Telefone secundário (opcional)
    email VARCHAR(100),  -- Email da instituição (opcional)
    site VARCHAR(100),  -- Site da instituição (opcional)
    id_endereco INT UNSIGNED NULL,  -- Chave estrangeira para a tabela de endereços
    PRIMARY KEY (cnpj),  -- CNPJ como chave primária
    CONSTRAINT fk_instituicao_endereco FOREIGN KEY (id_endereco) REFERENCES tb_enderecos(id) ON DELETE RESTRICT ON UPDATE CASCADE,  -- Relaciona com a tabela de endereços
    CONSTRAINT chk_cnpj CHECK (CHAR_LENGTH(cnpj) = 14 AND cnpj REGEXP '^[0-9]+$'),  -- Checa se o CNPJ tem 14 dígitos numéricos
    INDEX idx_razao_social (razao_social),
    INDEX idx_cnpj (cnpj)
);

### 5 - CRIANDO TABELA MEDICAMENTOS ###

CREATE TABLE tb_medicamentos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome_medicamento VARCHAR(70) NOT NULL, -- nome obrigatório
    dosagem VARCHAR(10) NOT NULL, -- dosagem obrigatória
    laboratorio VARCHAR(50) NOT NULL, -- laboratório obrigatório
    quantidade INT NOT NULL CHECK (quantidade >= 0), -- Garantindo que a quantidade não seja negativa
    PRIMARY KEY (id), -- Chave primária
	INDEX idx_nome_medicamento (nome_medicamento),
    INDEX idx_laboratorio (laboratorio)
);

##### 6 - CRIANDO TABELA CLIENTE_X_MEDICAMENTO #####

CREATE TABLE tb_cliente_x_medicamento (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_cliente INT UNSIGNED NOT NULL, -- Campo referente à chave estrangeira da tabela CLIENTE
    id_medicamentos INT UNSIGNED NOT NULL, -- Campo referente à chave estrangeira da tabela MEDICAMENTOS
    horario_administracao TIME NOT NULL, -- Horário de administração
    periodo VARCHAR(50), -- Período de administração (ex: diário, semanal)
    alergia BOOLEAN, -- Indica se o cliente tem alergia ao medicamento
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para CLIENTE
    CONSTRAINT fk_medicamentos FOREIGN KEY (id_medicamentos) REFERENCES tb_medicamentos(id) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para MEDICAMENTOS
	INDEX idx_id_cliente (id_cliente),
    INDEX idx_id_medicamentos (id_medicamentos),
    INDEX idx_horario_administracao (horario_administracao)
);

### 7 - CRIANDO TABELA PARA DESCRIÇAO DA SCALA DE KATZ ###

CREATE TABLE tb_escala_katz_desc (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL, -- Título obrigatório
    descricao TEXT NOT NULL, -- Descrição como tipo TEXT para permitir descrições mais longas
    PRIMARY KEY (id) -- Chave primária
);

### 8 - CRIANDO TABELA PARA CLASSIFICAR O CLIENTE NA SCALA DE KATZ ###

CREATE TABLE tb_escala_katz (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_cliente INT UNSIGNED NOT NULL, -- Chave estrangeira para identificar o cliente
    banho TINYINT NOT NULL, -- Usando TINYINT para representar 0 (não) ou 1 (sim)
    vestir TINYINT NOT NULL,
    banheiro TINYINT NOT NULL,
    continencia TINYINT NOT NULL,
    alimentacao TINYINT NOT NULL,
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT fk_cliente_escala FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para CLIENTE
    INDEX idx_id_cliente_escala (id_cliente)
);

### 9 - CRIANDO TABELA DE ATIVIDADES QUE AS INSTITUIÇÕES OFERECEM ###

CREATE TABLE tb_atividades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- ID autoincrementado
    titulo_atividade VARCHAR(100) NOT NULL, -- Nome da atividade obrigatório
    descricao TEXT NULL, -- Descrição como tipo TEXT (opcional)
    id_instituicao CHAR(14) NOT NULL, -- Chave estrangeira para a tabela de instituições
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT fk_instituicao FOREIGN KEY (id_instituicao) REFERENCES tb_instituicao(cnpj) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para tb_instituicao
    INDEX idx_titulo_atividade (titulo_atividade),
    INDEX idx_id_instituicao_atividades (id_instituicao)
);

### 10 - CRIANDO TABELA PRECO COM RELAÇÃO A SCALA DE KATZ ###

CREATE TABLE tb_preco (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- ID autoincrementado
    id_instituicao CHAR(14) NOT NULL, -- ID da instituição (chave estrangeira)
    pontuacao_scala_katz INT NOT NULL, -- Pontuação de classificação para escala de Katz
    interpretacao_scala TEXT NULL, -- Interpretação da escala como tipo TEXT
    preco_diaria DECIMAL(10, 2) NOT NULL, -- Preço diário com duas casas decimais
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT fk_instituicao_preco FOREIGN KEY (id_instituicao) REFERENCES tb_instituicao(cnpj) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para tb_instituicao
    INDEX idx_id_instituicao_preco (id_instituicao),
    INDEX idx_pontuacao_scala_katz (pontuacao_scala_katz)
);

### 11- CRIANDO TABELA DO AGENDAMENTO DAS ATIVIDADE ###

CREATE TABLE tb_agendamento (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- ID autoincrementado
    data_hora_inicio DATETIME DEFAULT NULL, -- Data e hora de início em UTC
    data_hora_final DATETIME DEFAULT NULL, -- Data e hora de término em UTC
    id_cliente INT UNSIGNED NOT NULL, -- ID do cliente (chave estrangeira)
    id_atividades INT UNSIGNED NOT NULL, -- ID da atividade (chave estrangeira)
    id_instituicao CHAR(14) NOT NULL, -- ID da instituição (chave estrangeira)
    PRIMARY KEY (id), -- Chave primária
    CONSTRAINT fk_cliente_agendamento FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para cliente
    CONSTRAINT fk_atividade_agendamento FOREIGN KEY (id_atividades) REFERENCES tb_atividades(id) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para atividade
    CONSTRAINT fk_instituicao_agendamento FOREIGN KEY (id_instituicao) REFERENCES tb_instituicao(cnpj) ON DELETE CASCADE ON UPDATE CASCADE, -- Chave estrangeira para instituição
    INDEX idx_data_hora_inicio (data_hora_inicio),
    INDEX idx_id_cliente_agendamento (id_cliente),
    INDEX idx_id_atividades (id_atividades),
    INDEX idx_id_instituicao_agendamento (id_instituicao)
);

### 12 - CRIANDO TABELA DE STATUS PAGAMENTO COM INTEGRAÇÃO DE API DE UM PARCEIRO DE PAGAMENTO ###

CREATE TABLE tb_pagamento (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,  -- Identificador único do pagamento (chave primária)
    status_pagamento ENUM('aprovado', 'reprovado') NOT NULL,  -- Status do pagamento baseado nas respostas da API
    id_preco INT UNSIGNED NOT NULL,  -- Chave estrangeira para o preço aplicado nesse pagamento
    id_usuario INT UNSIGNED NOT NULL,  -- Chave estrangeira para o usuário que fez o pagamento
    id_instituicao CHAR(14) NOT NULL, --  Chave estrangeira para a instituição que esta sendo paga
    transacao_id VARCHAR(100) NOT NULL,  -- ID da transação retornado pela API do parceiro
    data_pagamento DATETIME DEFAULT NULL,  -- Data e hora em que o pagamento foi processado
    PRIMARY KEY (id),  -- Chave primária
    CONSTRAINT fk_preco FOREIGN KEY (id_preco) REFERENCES tb_preco(id) ON DELETE CASCADE ON UPDATE CASCADE,  -- Relaciona com tabela de preços
    CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id) ON DELETE CASCADE ON UPDATE CASCADE,  -- Relaciona com a tabela de usuários
    INDEX idx_id_preco (id_preco),
    INDEX idx_id_usuario (id_usuario),
    INDEX idx_status_pagamento (status_pagamento),
    INDEX idx_transacao_id (transacao_id),
    INDEX idx_data_pagamento (data_pagamento)
);