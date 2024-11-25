### Realizando o Input dos dados nas Tabelas do Banco *Obs.: Dados são todos fictícios, somente para uso dessa implementação ###

use db_senior_reservas_app;

-- Input de dados na tabelas de enderecos
-- Serão 20 registos para cada categogia: USUARIO, CLEINTE E INSTITUICAO 

INSERT INTO tb_enderecos (rua, numero, complemento, bairro, cidade, estado, CEP)
VALUES
('Rua das Flores', 123, 'Apto 101', 'Centro', 'São Paulo', 'SP', '01001000'),
('Avenida Brasil', 456, NULL, 'Jardim Paulista', 'São Paulo', 'SP', '01402000'),
('Rua das Palmeiras', 789, 'Casa', 'Santa Cecília', 'São Paulo', 'SP', '01234567'),
('Rua do Sol', 321, 'Bloco A', 'Copacabana', 'Rio de Janeiro', 'RJ', '22041001'),
('Avenida Atlântica', 654, 'Cobertura', 'Leblon', 'Rio de Janeiro', 'RJ', '22420005'),
('Rua da Praia', 987, NULL, 'Boa Viagem', 'Recife', 'PE', '51020010'),
('Rua da Lagoa', 135, 'Apto 12B', 'Meireles', 'Fortaleza', 'CE', '60160020'),
('Rua do Comércio', 246, NULL, 'Centro', 'Belo Horizonte', 'MG', '30110000'),
('Avenida Independência', 579, 'Galpão', 'Independência', 'Porto Alegre', 'RS', '90035002'),
('Rua das Palmeiras', 147, NULL, 'Centro', 'Curitiba', 'PR', '80010110'),
('Rua do Bosque', 258, 'Bloco C', 'Bosque da Saúde', 'Cuiabá', 'MT', '78020050'),
('Rua Principal', 369, 'Casa 7', 'Centro', 'Florianópolis', 'SC', '88010300'),
('Avenida das Nações', 741, NULL, 'Zona Norte', 'Manaus', 'AM', '69010500'),
('Rua do Mercado', 852, 'Sala 101', 'Centro', 'Belém', 'PA', '66010900'),
('Rua da Luz', 963, 'Bloco D', 'Centro', 'Natal', 'RN', '59010050'),
('Rua Nova', 159, NULL, 'Centro', 'João Pessoa', 'PB', '58010000'),
('Avenida Central', 357, 'Loja 8', 'Centro', 'Maceió', 'AL', '57010700'),
('Rua dos Pioneiros', 753, NULL, 'Pioneiros', 'Campo Grande', 'MS', '79010600'),
('Rua da Alegria', 951, 'Casa', 'Centro', 'Salvador', 'BA', '40010150'),
('Rua Verde', 159, 'Bloco F', 'Águas Claras', 'Brasília', 'DF', '71900400'),
('Rua Azul', 268, 'Apto 202', 'Asa Sul', 'Brasília', 'DF', '70297400'),
('Avenida do Sol', 432, 'Condomínio', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22640100'),
('Rua Esperança', 654, 'Apto 303', 'Centro', 'Fortaleza', 'CE', '60040000'),
('Rua dos Sabiás', 876, NULL, 'Vila Nova', 'Campinas', 'SP', '13010500'),
('Avenida Paulista', 789, 'Sala 7', 'Bela Vista', 'São Paulo', 'SP', '01310000'),
('Rua Barão', 147, NULL, 'Liberdade', 'São Paulo', 'SP', '01510000'),
('Avenida Beira Rio', 258, 'Cobertura', 'Boa Viagem', 'Recife', 'PE', '51020100'),
('Rua das Esmeraldas', 369, NULL, 'Pampulha', 'Belo Horizonte', 'MG', '31275200'),
('Rua Rio Branco', 741, 'Bloco G', 'Centro', 'Porto Alegre', 'RS', '90010002'),
('Rua Amarela', 852, 'Apto 401', 'Centro', 'Curitiba', 'PR', '80010200'),
('Rua das Hortênsias', 963, NULL, 'Centro', 'Florianópolis', 'SC', '88010400'),
('Avenida Tupi', 159, 'Loja 9', 'Centro', 'Manaus', 'AM', '69010600'),
('Rua Paraná', 357, NULL, 'Centro', 'Belém', 'PA', '66010400'),
('Rua Paraíba', 753, 'Sala 102', 'Centro', 'Natal', 'RN', '59010200'),
('Avenida do Futuro', 951, NULL, 'Centro', 'João Pessoa', 'PB', '58010100'),
('Rua dos Estudantes', 159, 'Bloco H', 'Centro', 'Maceió', 'AL', '57010800'),
('Rua Professor', 268, 'Apto 203', 'Centro', 'Campo Grande', 'MS', '79010700'),
('Rua do Lazer', 432, 'Casa 12', 'Centro', 'Salvador', 'BA', '40010250'),
('Rua Verde Lima', 654, NULL, 'Águas Claras', 'Brasília', 'DF', '71900500'),
('Rua Estrela', 876, 'Bloco I', 'Asa Norte', 'Brasília', 'DF', '70100300'),
('Avenida Principal', 789, 'Conjunto 5', 'Centro', 'Rio Branco', 'AC', '69900000'),
('Rua do Fogo', 741, NULL, 'Centro', 'Palmas', 'TO', '77000200'),
('Rua dos Ipês', 258, 'Casa 10', 'Centro', 'Aracaju', 'SE', '49000150'),
('Rua da Paz', 963, NULL, 'Centro', 'Macapá', 'AP', '68900400'),
('Avenida Bonito', 159, 'Apto 301', 'Centro', 'Boa Vista', 'RR', '69300500'),
('Rua Morada Nova', 357, 'Bloco J', 'Centro', 'Rio Branco', 'AC', '69910100'),
('Avenida dos Lagos', 753, NULL, 'Centro', 'Palmas', 'TO', '77000300'),
('Rua Bela Vista', 951, 'Casa 14', 'Centro', 'Aracaju', 'SE', '49000250'),
('Rua Nova Esperança', 159, 'Bloco K', 'Centro', 'Macapá', 'AP', '68900500'),
('Avenida Tropical', 268, 'Conjunto 6', 'Centro', 'Boa Vista', 'RR', '69300700'),
('Rua do Lago', 432, NULL, 'Centro', 'Manaus', 'AM', '69000800'),
('Rua Silveira', 654, 'Apto 102', 'Centro', 'Salvador', 'BA', '40000000'),
('Rua dos Lírios', 123, 'Bloco M', 'Jardim das Flores', 'Campinas', 'SP', '13040090'),
('Avenida Aurora', 456, 'Casa 22', 'Vila Mariana', 'São Paulo', 'SP', '04110000'),
('Rua Santa Clara', 789, NULL, 'Centro', 'Rio de Janeiro', 'RJ', '22041020'),
('Avenida Amazonas', 321, 'Cobertura', 'Centro', 'Belo Horizonte', 'MG', '30120050'),
('Rua Primavera', 654, 'Apto 404', 'Centro', 'Curitiba', 'PR', '80020100'),
('Rua das Mangueiras', 987, NULL, 'Centro', 'Florianópolis', 'SC', '88020300'),
('Rua do Horizonte', 135, 'Casa 8', 'Centro', 'Porto Alegre', 'RS', '90040200'),
('Rua da Felicidade', 246, 'Bloco N', 'Centro', 'Brasília', 'DF', '70110500');

-- Input de dados na tabelas de usuario
-- Serão 20 registos USUARIO
INSERT INTO tb_usuario (nome, sobrenome, cpf, rg, celular, email, senha, id_endereco)
VALUES
('Ana', 'Silva', '12345678901', 'MG1234567', '11 912345678', 'ana.silva@email.com', 'senha123', 1),
('Carlos', 'Santos', '23456789012', 'SP2345678', '21 998765432', 'carlos.santos@email.com', 'senha123', 2),
('Maria', 'Oliveira', '34567890123', 'RJ3456789', '31 911112222', 'maria.oliveira@email.com', 'senha123', 3),
('João', 'Costa', '45678901234', 'RS4567890', '41 923456789', 'joao.costa@email.com', 'senha123', 4),
('Beatriz', 'Lima', '56789012345', 'PR5678901', '51 934567890', 'beatriz.lima@email.com', 'senha123', 5),
('Pedro', 'Ferreira', '67890123456', 'SC6789012', '61 945678901', 'pedro.ferreira@email.com', 'senha123', 6),
('Camila', 'Almeida', '78901234567', 'PE7890123', '71 956789012', 'camila.almeida@email.com', 'senha123', 7),
('Lucas', 'Martins', '89012345678', 'CE8901234', '81 967890123', 'lucas.martins@email.com', 'senha123', 8),
('Fernanda', 'Gomes', '90123456789', 'AM9012345', '91 978901234', 'fernanda.gomes@email.com', 'senha123', 9),
('Rafael', 'Rocha', '01234567890', 'BA0123456', '31 988887777', 'rafael.rocha@email.com', 'senha123', 10),
('Juliana', 'Mendes', '12312312399', 'SP1111222', '11 977776666', 'juliana.mendes@email.com', 'senha123', 11),
('Roberto', 'Nascimento', '23423423488', 'RJ2222333', '21 966665555', 'roberto.nascimento@email.com', 'senha123', 12),
('Isabela', 'Souza', '34534534577', 'MG3333444', '31 955554444', 'isabela.souza@email.com', 'senha123', 13),
('Felipe', 'Barbosa', '45645645666', 'RS4444555', '41 944443333', 'felipe.barbosa@email.com', 'senha123', 14),
('Letícia', 'Ribeiro', '56756756755', 'PR5555666', '51 933332222', 'leticia.ribeiro@email.com', 'senha123', 15),
('Gustavo', 'Moura', '67867867844', 'SC6666777', '61 922221111', 'gustavo.moura@email.com', 'senha123', 16),
('Amanda', 'Carvalho', '78978978933', 'PE7777888', '71 911110000', 'amanda.carvalho@email.com', 'senha123', 17),
('Eduardo', 'Teixeira', '89089089022', 'CE8888999', '81 900009999', 'eduardo.teixeira@email.com', 'senha123', 18),
('Patrícia', 'Duarte', '90190190111', 'AM9999000', '91 989898989', 'patricia.duarte@email.com', 'senha123', 19),
('Ricardo', 'Farias', '01201201200', 'BA0000111', '31 978787878', 'ricardo.farias@email.com', 'senha123', 20);

-- Input de dados na tabelas de cliente
-- Serão 20 registos CLIENTE

INSERT INTO tb_cliente (nome, sobrenome,rg, cpf, data_nasc,idade, id_usuario, id_endereco)
VALUES
('Adalberto', 'Pereira', 'SP123456', '98765432101', '1958-04-11', 66, 1, 21),
('Bernadete', 'Cardoso', 'MG234568', '87654321012', '1957-01-20', 67, 2, 22),
('Caio', 'Rodrigues', 'RJ345679', '76543210987', '1954-10-30', 70, 3, 23),
('Dulce', 'Vieira', 'BA456790', '65432109876', '1953-06-15', 71, 4, 24),
('Edson', 'Azevedo', 'PE567891', '54321098765', '1948-03-22', 76, 5, 25),
('Fabiana', 'Nascimento', 'SC678902', '43210987654', '1950-08-09', 74, 6, 26),
('Geraldo', 'Machado', 'RS789013', '32109876543', '1949-02-17', 75, 7, 27),
('Helena', 'Barreto', 'CE890124', '21098765432', '1955-11-28', 69, 8, 28),
('Ismael', 'Castro', 'AM901235', '10987654321', '1952-12-04', 72, 9, 29),
('Janete', 'Mendes', 'PA012347', '09876543210', '1951-07-01', 73, 10, 30),
('Kleber', 'Martins', 'PR123457', '98765432111', '1956-05-12', 68, 11, 31),
('Laura', 'Siqueira', 'MG234569', '87654321022', '1957-04-08', 67, 12, 32),
('Marcos', 'Neves', 'RJ345680', '76543210933', '1947-09-15', 77, 13, 33),
('Natália', 'Soares', 'SP456781', '65432109844', '1953-03-19', 71, 14, 34),
('Orlando', 'Farias', 'RS567892', '54321098755', '1954-02-06', 70, 15, 35),
('Patrícia', 'Monteiro', 'BA678903', '43210987666', '1958-09-17', 66, 16, 36),
('Quirino', 'Dias', 'SC789014', '32109876577', '1955-12-14', 69, 17, 37),
('Rosa', 'Ferraz', 'CE890125', '21098765488', '1951-06-23', 73, 18, 38),
('Sebastião', 'Reis', 'AM901236', '10987654399', '1950-10-31', 74, 19, 39),
('Tereza', 'Cavalcante', 'PA012348', '09876543222', '1948-02-28', 76, 20, 40);

-- Input de dados na tabelas da instituicao
-- Serão 20 registos INSTITUICAO

INSERT INTO tb_instituicao(cnpj, razao_social, nome_fantasia, protocolo_alvara_funcionamento, qtd_max_pessoas_dia, telefone_1, telefone_2, email, site, id_endereco)
VALUES
('12345678000100', 'Instituição Educacional Alfa Ltda', 'Alfa Educacional', 'A123456789', 150, '11987654321', '11976543210', 'contato@alfa.edu.br', 'www.alfa.edu.br', 41),
('23456789000101', 'Instituto Médico Beta S.A.', 'Beta Saúde', 'B987654321', 100, '2134987654', '2134876543', 'contato@beta.saude.br', 'www.beta.saude.br', 42),
('34567890100102', 'Clínica de Reabilitação Delta', 'Delta Reabilitação', 'C456789123', 50, '31987654321', '31976543210', 'contato@delta.reab.br', 'www.delta.reab.br', 43),
('45678901200103', 'Casa de Aposentados Omega', 'Omega Longevidade', 'D789123456', 80, '4134876543', '4134765432', 'contato@omega.lon.br', 'www.omega.lon.br', 44),
('56789012300104', 'Instituto de Artes Visuais Sigma', 'Sigma Arts', 'E234567890', 120, '4198765432', '4197654321', 'contato@sigma.arts.br', 'www.sigma.arts.br', 45),
('67890123400105', 'Associação de Música Phi', 'Phi Música', 'F567890123', 60, '51987654321', '51976543210', 'contato@phi.mus.br', 'www.phi.mus.br', 46),
('78901234500106', 'Fundação para Ensino Técnico Tau', 'Tau Técnico', 'G123456789', 200, '6198765432', '6197654321', 'contato@tau.tecnico.br', 'www.tau.tecnico.br', 47),
('89012345600107', 'Instituição de Pesquisa Gama', 'Gama Pesquisa', 'H234567890', 30, '72987654321', '72976543210', 'contato@gama.pesq.br', 'www.gama.pesq.br', 48),
('90123456700108', 'Centro de Formação Zeta', 'Zeta Formação', 'I345678901', 50, '8398765432', '8397654321', 'contato@zeta.form.br', 'www.zeta.form.br', 49),
('01234567800109', 'Hospital Universitário Lambda', 'Lambda Saúde', 'J456789012', 300, '21987654321', '21976543210', 'contato@lambda.saude.br', 'www.lambda.saude.br', 50),
('12345678900110', 'Clínica Estética Épsilon', 'Épsilon Beleza', 'K567890123', 40, '31987654321', '31976543210', 'contato@epsilon.beleza.br', 'www.epsilon.beleza.br', 51),
('23456789000111', 'Escola de Línguas Rho', 'Rho Idiomas', 'L678901234', 80, '4298765432', '4297654321', 'contato@rho.idiomas.br', 'www.rho.idiomas.br', 52),
('34567890100112', 'Instituto de Culinária Mu', 'Mu Gastronomia', 'M789012345', 100, '53987654321', '53976543210', 'contato@mu.gastro.br', 'www.mu.gastro.br', 53),
('45678901200113', 'Centro de Formação Kappa', 'Kappa Técnico', 'N890123456', 60, '6498765432', '6497654321', 'contato@kappa.tecnico.br', 'www.kappa.tecnico.br', 54),
('56789012300114', 'Clínica Oftalmológica Iota', 'Iota Olhos', 'O123456789', 80, '75987654321', '75976543210', 'contato@iota.olhos.br', 'www.iota.olhos.br', 55),
('67890123400115', 'Instituto de Psicologia Zeta', 'Zeta Psicologia', 'P234567890', 60, '8698765432', '8697654321', 'contato@zeta.psico.br', 'www.zeta.psico.br', 56),
('78901234500116', 'Centro de Educação Omega', 'Omega Educação', 'Q345678901', 150, '97987654321', '97976543210', 'contato@omega.ed.br', 'www.omega.ed.br', 57),
('89012345600117', 'Escola de Música Pi', 'Pi Música', 'R456789012', 90, '8898765432', '8897654321', 'contato@pi.mus.br', 'www.pi.mus.br', 58),
('90123456700118', 'Centro de Dança Mu', 'Mu Dança', 'S567890123', 120, '99987654321', '99976543210', 'contato@mu.danca.br', 'www.mu.danca.br', 59),
('01234567800119', 'Instituto de Pesquisa Beta', 'Beta Pesquisa', 'T678901234', 40, '1098765432', '1097654321', 'contato@beta.pesq.br', 'www.beta.pesq.br', 60);

-- Input de dados na tabelas de medicamentos
-- Serão 40 registos de medicamentos de possivel uso dos clientes

INSERT INTO tb_medicamentos(nome_medicamento, dosagem, laboratorio, quantidade)
VALUES
('Paracetamol', '500mg', 'MedPharma', 150),
('Ibuprofeno', '600mg', 'PharmaLife', 200),
('Amoxicilina', '875mg', 'BioLab', 100),
('Captopril', '25mg', 'SaúdeMais', 300),
('Dipirona', '1g', 'MedicLab', 400),
('Clonazepam', '2mg', 'NeuroPharma', 120),
('Cetoconazol', '200mg', 'DermaLab', 180),
('Fluoxetina', '20mg', 'MentalCare', 90),
('Atenolol', '50mg', 'CardioLife', 250),
('Losartana', '100mg', 'SaúdeFarma', 300),
('Metformina', '850mg', 'DiabetesCare', 200),
('Simeticona', '125mg', 'GastroPharma', 150),
('Omeprazol', '40mg', 'DigestMed', 350),
('Vitamina D', '5000UI', 'NutriPlus', 400),
('Ferro', '300mg', 'HemoLab', 180),
('Lorazepam', '1mg', 'NeuroPlus', 100),
('Diclofenaco', '75mg', 'PainFree', 220),
('Salbutamol', '100mcg', 'RespireBem', 120),
('Cetirizina', '10mg', 'AlergoLab', 140),
('Azitromicina', '500mg', 'AntibioMed', 130),
('Prednisona', '20mg', 'CorticoPlus', 110),
('Ranitidina', '300mg', 'DigestFarma', 200),
('Isotretinoína', '20mg', 'DermaCare', 90),
('Carbamazepina', '400mg', 'NeuroLife', 80),
('Cloridrato de Sertralina', '50mg', 'MentalWell', 150),
('Lamotrigina', '25mg', 'NeuroTherapy', 60),
('Budesonida', '64mcg', 'RespireMais', 170),
('Levodopa', '250mg', 'NeuroAct', 50),
('Cefalexina', '500mg', 'AntibioLab', 300),
('Enalapril', '10mg', 'CardioCare', 220),
('Tamsulosina', '0.4mg', 'ProstMed', 150),
('Propranolol', '40mg', 'CardioFit', 100),
('Clindamicina', '300mg', 'BioFarma', 70),
('Esomeprazol', '20mg', 'GastroCare', 140),
('Alprazolam', '0.5mg', 'MentalEase', 90),
('Cetoprofeno', '150mg', 'PainRelief', 180),
('Dexametasona', '4mg', 'CorticoLab', 250),
('Hidroxicloroquina', '400mg', 'AntiInflamLab', 120),
('Melatonina', '3mg', 'SleepWell', 200),
('Glimepirida', '2mg', 'DiabetesPro', 130);

-- Input de dados na tabelas de medicamentos
-- Serão 28 registos de correlação de medicação com cliente.

INSERT INTO tb_cliente_x_medicamento(id_cliente, id_medicamentos, horario_administracao, periodo, alergia)
VALUES
(1, 1, '08:00', 'diário', FALSE),
(1, 5, '20:00', 'diário', FALSE),
(2, 2, '07:00', 'semanal', TRUE),
(3, 7, '18:00', 'diário', FALSE),
(3, 12, '22:00', 'semanal', FALSE),
(4, 3, '10:00', 'diário', FALSE),
(5, 6, '09:00', 'diário', FALSE),
(6, 15, '22:00', 'diário', FALSE),
(6, 19, '11:00', 'semanal', FALSE),
(7, 10, '06:00', 'semanal', FALSE),
(8, 8, '12:00', 'diário', TRUE),
(8, 20, '23:00', 'diário', FALSE),
(9, 22, '14:00', 'semanal', FALSE),
(10, 18, '08:30', 'semanal', FALSE),
(10, 19, '20:30', 'diário', FALSE),
(11, 25, '14:30', 'diário', FALSE),
(12, 28, '07:00', 'semanal', FALSE),
(13, 30, '21:00', 'diário', TRUE),
(14, 32, '10:00', 'semanal', FALSE),
(14, 35, '16:00', 'diário', FALSE),
(15, 33, '08:00', 'diário', FALSE),
(16, 22, '09:00', 'diário', FALSE),
(17, 38, '20:00', 'semanal', FALSE),
(18, 39, '11:30', 'diário', FALSE),
(18, 40, '23:30', 'semanal', FALSE),
(19, 13, '18:15', 'diário', FALSE),
(20, 15, '19:15', 'semanal', FALSE),
(20, 2, '08:15', 'diário', FALSE);

-- Input de dados na TABELA PARA DESCRIÇAO DA SCALA DE KATZ
-- Serão 6 registros para uma tabela de consulta

INSERT INTO tb_escala_katz_desc(titulo, descricao)
VALUES
('BANHO', 'A avaliação da atividade "BANHAR-SE" é considerada em relação ao uso do chuveiro, da banheira e ao ato de esfregar-se em qualquer uma dessas situações.'),
('VESTIR', 'Para avaliar a função "VESTIR-SE" considera-se o ato de pegar as roupas no armário, bem como o ato de se vestir propriamente dito, incluindo-se botões, fechos e cintos. Calçar sapatos está excluído da avaliação.'),
('BANHEIRO', 'A função “USAR O BANHEIRO” compreende o ato de ir ao banheiro para excreções, higienizar-se e arrumar as próprias roupas. Dependentes são aqueles que recebem qualquer auxílio direto ou que não desempenham a função, incluindo o uso de "papagaios" ou "comadres" (neste caso considerar como ajuda total).'),
('TRANSFERÊNCIA', 'A função "TRANSFERÊNCIA" é avaliada pelo movimento desempenhado pelo idoso para sair da cama e sentar-se em uma cadeira e vice-versa. Dependentes são as pessoas que recebem qualquer auxílio (parcial ou total) em qualquer das transferências.'),
('CONTINÊNCIA', 'O termo "CONTINÊNCIA" refere-se ao ato inteiramente autocontrolado de eliminação de urina e fezes. A dependência está relacionada à presença de incontinência total ou parcial em qualquer uma das funções. Qualquer tipo de controle externo como enemas, cateterização ou uso regular de fraldas caracteriza a pessoa como dependente (neste caso avaliar a necessidade de auxilio para a realização de um desses procedimentos).'),
('ALIMENTAÇÃO', 'A função "ALIMENTAR-SE" relaciona-se ao ato de dirigir a comida do prato (ou similar) à boca. O ato de cortar alimentos ou prepará-los está excluído da avaliação. Dependentes são as pessoas que recebem qualquer assistência pessoal. Aqueles que não se alimentam sem ajuda ou que utilizam sondas para se alimentarem são considerados dependentes.');

-- Input de dados na TABELA PARA CLASSIFICAR O CLIENTE NA SCALA DE KATZ
-- Serão 20 registros de classificaçã da escala

INSERT INTO tb_escala_katz(id_cliente, banho, vestir, banheiro, continencia, alimentacao)
VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 0, 1, 0, 1),
(3, 1, 1, 1, 1, 0),
(4, 0, 0, 1, 1, 1),
(5, 1, 1, 0, 1, 0),
(6, 1, 0, 1, 0, 1),
(7, 0, 1, 1, 1, 1),
(8, 1, 1, 1, 0, 0),
(9, 0, 0, 0, 1, 1),
(10, 1, 1, 1, 1, 1),
(11, 0, 1, 0, 1, 0),
(12, 1, 0, 1, 0, 1),
(13, 1, 1, 1, 1, 0),
(14, 0, 0, 1, 1, 1),
(15, 1, 1, 0, 1, 1),
(16, 0, 1, 1, 0, 0),
(17, 1, 1, 1, 1, 1),
(18, 0, 1, 0, 1, 1),
(19, 1, 0, 1, 0, 1),
(20, 1, 1, 1, 1, 0);

-- Input de dados na TABELA DE ATIVIDADES QUE AS INSTITUIÇÕES OFERECEM
-- Serão 20 registros de atividade que as instituições oferecem para agendamento 

INSERT INTO tb_atividades(titulo_atividade, descricao, id_instituicao)
VALUES
('Sessão de Alongamento', 'Exercícios leves para melhorar a flexibilidade e a postura.', '23456789000101'),
('Aulas de Pintura', 'Curso de pintura para incentivar a criatividade e relaxamento.', '67890123400105'),
('Bingo Comunitário', 'Atividade recreativa para estimular a socialização.', '45678901200103'),
('Sessão de Hidroginástica', 'Exercícios físicos na água para fortalecer os músculos e aliviar dores.', '34567890100102'),
('Oficina de Memória', 'Atividades para estimular a memória e as funções cognitivas.', '67890123400115'),
('Grupo de Leitura', 'Encontros semanais para leitura e discussão de livros.', '12345678000100'),
('Palestra sobre Saúde e Bem-Estar', 'Orientações sobre envelhecimento saudável.', '78901234500116'),
('Aulas de Dança de Salão', 'Atividade física e recreativa ao som de músicas clássicas.', '90123456700118'),
('Terapia Ocupacional', 'Sessões para trabalhar habilidades motoras e cognitivas.', '89012345600107'),
('Horta Comunitária', 'Atividade prática de cultivo de vegetais e plantas.', '01234567800119'),
('Aula de Tai Chi Chuan', 'Prática de movimentos suaves para equilíbrio e relaxamento.', '89012345600117'),
('Oficina de Artesanato', 'Confecção de objetos decorativos com materiais diversos.', '67890123400105'),
('Sessão de Cinema', 'Exibição de filmes clássicos seguidos de debates.', '90123456700108'),
('Grupo de Canto Coral', 'Prática de canto em grupo com foco na harmonia vocal.', '78901234500116'),
('Treinamento de Primeiros Socorros', 'Aprenda técnicas de resposta a emergências.', '12345678900110'),
('Aulas de Crochê e Tricô', 'Atividades manuais para relaxamento e criatividade.', '23456789000111'),
('Palestra sobre Direito do Idoso', 'Informações sobre direitos e benefícios para a terceira idade.', '34567890100112'),
('Sessão de Reiki', 'Terapia de relaxamento para equilíbrio energético.', '34567890100102'),
('Grupo de Caminhada', 'Atividade física ao ar livre para estimular a circulação.', '56789012300104'),
('Sessão de Massoterapia', 'Terapia relaxante para alívio de dores musculares.', '45678901200103');

-- Input de dados na TABELA PRECO COM RELAÇÃO A SCALA DE KATZ

INSERT INTO tb_preco(id_instituicao, pontuacao_scala_katz, interpretacao_scala, preco_diaria)
VALUES
-- Instituição 1
('12345678000100', 0, 'independente em todas as seis funções', '50.00'),
('12345678000100', 1, 'independente em cinco funções e dependente em uma função', '100.00'),
('12345678000100', 2, 'independente em quatro funções e dependente em duas funções', '150.00'),
('12345678000100', 3, 'independente em três funções e dependente em três funções', '200.00'),
('12345678000100', 4, 'independente em duas funções e dependente em quatro funções', '250.00'),
('12345678000100', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('12345678000100', 6, 'dependente em todas as seis funções', '350.00'),
('12345678000100', 7, 'totalmente dependente', '400.00'),
-- Instituição 2
('23456789000101', 0, 'independente em todas as seis funções', '20.00'),
('23456789000101', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('23456789000101', 2, 'independente em quatro funções e dependente em duas funções', '100.00'),
('23456789000101', 3, 'independente em três funções e dependente em três funções', '150.00'),
('23456789000101', 4, 'independente em duas funções e dependente em quatro funções', '200.00'),
('23456789000101', 5, 'independente em uma função e dependente em cinco funções', '250.00'),
('23456789000101', 6, 'dependente em todas as seis funções', '300.00'),
('23456789000101', 7, 'totalmente dependente', '350.00'),
-- Instituição 3
('34567890100102', 0, 'independente em todas as seis funções', '30.00'),
('34567890100102', 1, 'independente em cinco funções e dependente em uma função', '60.00'),
('34567890100102', 2, 'independente em quatro funções e dependente em duas funções', '120.00'),
('34567890100102', 3, 'independente em três funções e dependente em três funções', '180.00'),
('34567890100102', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('34567890100102', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('34567890100102', 6, 'dependente em todas as seis funções', '360.00'),
('34567890100102', 7, 'totalmente dependente', '420.00'),
-- Instituição 4
('45678901200103', 0, 'independente em todas as seis funções', '40.00'),
('45678901200103', 1, 'independente em cinco funções e dependente em uma função', '80.00'),
('45678901200103', 2, 'independente em quatro funções e dependente em duas funções', '160.00'),
('45678901200103', 3, 'independente em três funções e dependente em três funções', '200.00'),
('45678901200103', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('45678901200103', 5, 'independente em uma função e dependente em cinco funções', '280.00'),
('45678901200103', 6, 'dependente em todas as seis funções', '320.00'),
('45678901200103', 7, 'totalmente dependente', '360.00'),
-- Instituição 5
('56789012300104', 0, 'independente em todas as seis funções', '20.00'),
('56789012300104', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('56789012300104', 2, 'independente em quatro funções e dependente em duas funções', '110.00'),
('56789012300104', 3, 'independente em três funções e dependente em três funções', '160.00'),
('56789012300104', 4, 'independente em duas funções e dependente em quatro funções', '220.00'),
('56789012300104', 5, 'independente em uma função e dependente em cinco funções', '270.00'),
('56789012300104', 6, 'dependente em todas as seis funções', '330.00'),
('56789012300104', 7, 'totalmente dependente', '380.00'),
-- Instituição 6
('67890123400105', 0, 'independente em todas as seis funções', '20.00'),
('67890123400105', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('67890123400105', 2, 'independente em quatro funções e dependente em duas funções', '110.00'),
('67890123400105', 3, 'independente em três funções e dependente em três funções', '160.00'),
('67890123400105', 4, 'independente em duas funções e dependente em quatro funções', '220.00'),
('67890123400105', 5, 'independente em uma função e dependente em cinco funções', '270.00'),
('67890123400105', 6, 'dependente em todas as seis funções', '330.00'),
('67890123400105', 7, 'totalmente dependente', '380.00'),
 -- Instituição 7
('78901234500106', 0, 'independente em todas as seis funções', '50.00'),
('78901234500106', 1, 'independente em cinco funções e dependente em uma função', '100.00'),
('78901234500106', 2, 'independente em quatro funções e dependente em duas funções', '150.00'),
('78901234500106', 3, 'independente em três funções e dependente em três funções', '200.00'),
('78901234500106', 4, 'independente em duas funções e dependente em quatro funções', '250.00'),
('78901234500106', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('78901234500106', 6, 'dependente em todas as seis funções', '350.00'),
('78901234500106', 7, 'totalmente dependente', '400.00'),
-- Instituição 8
('89012345600107', 0, 'independente em todas as seis funções', '20.00'),
('89012345600107', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('89012345600107', 2, 'independente em quatro funções e dependente em duas funções', '100.00'),
('89012345600107', 3, 'independente em três funções e dependente em três funções', '150.00'),
('89012345600107', 4, 'independente em duas funções e dependente em quatro funções', '200.00'),
('89012345600107', 5, 'independente em uma função e dependente em cinco funções', '250.00'),
('89012345600107', 6, 'dependente em todas as seis funções', '300.00'),
('89012345600107', 7, 'totalmente dependente', '350.00'),
-- Instituição 9
('90123456700108', 0, 'independente em todas as seis funções', '30.00'),
('90123456700108', 1, 'independente em cinco funções e dependente em uma função', '60.00'),
('90123456700108', 2, 'independente em quatro funções e dependente em duas funções', '120.00'),
('90123456700108', 3, 'independente em três funções e dependente em três funções', '180.00'),
('90123456700108', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('90123456700108', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('90123456700108', 6, 'dependente em todas as seis funções', '360.00'),
('90123456700108', 7, 'totalmente dependente', '420.00'),
-- Instituição 10
('01234567800109', 0, 'independente em todas as seis funções', '40.00'),
('01234567800109', 1, 'independente em cinco funções e dependente em uma função', '80.00'),
('01234567800109', 2, 'independente em quatro funções e dependente em duas funções', '160.00'),
('01234567800109', 3, 'independente em três funções e dependente em três funções', '200.00'),
('01234567800109', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('01234567800109', 5, 'independente em uma função e dependente em cinco funções', '280.00'),
('01234567800109', 6, 'dependente em todas as seis funções', '320.00'),
('01234567800109', 7, 'totalmente dependente', '360.00'),
-- Instituição 11
('12345678900110', 0, 'independente em todas as seis funções', '20.00'),
('12345678900110', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('12345678900110', 2, 'independente em quatro funções e dependente em duas funções', '110.00'),
('12345678900110', 3, 'independente em três funções e dependente em três funções', '160.00'),
('12345678900110', 4, 'independente em duas funções e dependente em quatro funções', '220.00'),
('12345678900110', 5, 'independente em uma função e dependente em cinco funções', '270.00'),
('12345678900110', 6, 'dependente em todas as seis funções', '330.00'),
('12345678900110', 7, 'totalmente dependente', '380.00'),
 -- Instituição 12
('23456789000111', 0, 'independente em todas as seis funções', '50.00'),
('23456789000111', 1, 'independente em cinco funções e dependente em uma função', '100.00'),
('23456789000111', 2, 'independente em quatro funções e dependente em duas funções', '150.00'),
('23456789000111', 3, 'independente em três funções e dependente em três funções', '200.00'),
('23456789000111', 4, 'independente em duas funções e dependente em quatro funções', '250.00'),
('23456789000111', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('23456789000111', 6, 'dependente em todas as seis funções', '350.00'),
('23456789000111', 7, 'totalmente dependente', '400.00'),
-- Instituição 13
('34567890100112', 0, 'independente em todas as seis funções', '20.00'),
('34567890100112', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('34567890100112', 2, 'independente em quatro funções e dependente em duas funções', '100.00'),
('34567890100112', 3, 'independente em três funções e dependente em três funções', '150.00'),
('34567890100112', 4, 'independente em duas funções e dependente em quatro funções', '200.00'),
('34567890100112', 5, 'independente em uma função e dependente em cinco funções', '250.00'),
('34567890100112', 6, 'dependente em todas as seis funções', '300.00'),
('34567890100112', 7, 'totalmente dependente', '350.00'),
-- Instituição 14
('45678901200113', 0, 'independente em todas as seis funções', '30.00'),
('45678901200113', 1, 'independente em cinco funções e dependente em uma função', '60.00'),
('45678901200113', 2, 'independente em quatro funções e dependente em duas funções', '120.00'),
('45678901200113', 3, 'independente em três funções e dependente em três funções', '180.00'),
('45678901200113', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('45678901200113', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('45678901200113', 6, 'dependente em todas as seis funções', '360.00'),
('45678901200113', 7, 'totalmente dependente', '420.00'),
-- Instituição 15
('56789012300114', 0, 'independente em todas as seis funções', '40.00'),
('56789012300114', 1, 'independente em cinco funções e dependente em uma função', '80.00'),
('56789012300114', 2, 'independente em quatro funções e dependente em duas funções', '160.00'),
('56789012300114', 3, 'independente em três funções e dependente em três funções', '200.00'),
('56789012300114', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('56789012300114', 5, 'independente em uma função e dependente em cinco funções', '280.00'),
('56789012300114', 6, 'dependente em todas as seis funções', '320.00'),
('56789012300114', 7, 'totalmente dependente', '360.00'),
-- Instituição 16
('67890123400115', 0, 'independente em todas as seis funções', '20.00'),
('67890123400115', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('67890123400115', 2, 'independente em quatro funções e dependente em duas funções', '110.00'),
('67890123400115', 3, 'independente em três funções e dependente em três funções', '160.00'),
('67890123400115', 4, 'independente em duas funções e dependente em quatro funções', '220.00'),
('67890123400115', 5, 'independente em uma função e dependente em cinco funções', '270.00'),
('67890123400115', 6, 'dependente em todas as seis funções', '330.00'),
('67890123400115', 7, 'totalmente dependente', '380.00'),
 -- Instituição 17
('78901234500116', 0, 'independente em todas as seis funções', '50.00'),
('78901234500116', 1, 'independente em cinco funções e dependente em uma função', '100.00'),
('78901234500116', 2, 'independente em quatro funções e dependente em duas funções', '150.00'),
('78901234500116', 3, 'independente em três funções e dependente em três funções', '200.00'),
('78901234500116', 4, 'independente em duas funções e dependente em quatro funções', '250.00'),
('78901234500116', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('78901234500116', 6, 'dependente em todas as seis funções', '350.00'),
('78901234500116', 7, 'totalmente dependente', '400.00'),
-- Instituição 18
('89012345600117', 0, 'independente em todas as seis funções', '20.00'),
('89012345600117', 1, 'independente em cinco funções e dependente em uma função', '50.00'),
('89012345600117', 2, 'independente em quatro funções e dependente em duas funções', '100.00'),
('89012345600117', 3, 'independente em três funções e dependente em três funções', '150.00'),
('89012345600117', 4, 'independente em duas funções e dependente em quatro funções', '200.00'),
('89012345600117', 5, 'independente em uma função e dependente em cinco funções', '250.00'),
('89012345600117', 6, 'dependente em todas as seis funções', '300.00'),
('89012345600117', 7, 'totalmente dependente', '350.00'),
-- Instituição 19
('90123456700118', 0, 'independente em todas as seis funções', '30.00'),
('90123456700118', 1, 'independente em cinco funções e dependente em uma função', '60.00'),
('90123456700118', 2, 'independente em quatro funções e dependente em duas funções', '120.00'),
('90123456700118', 3, 'independente em três funções e dependente em três funções', '180.00'),
('90123456700118', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('90123456700118', 5, 'independente em uma função e dependente em cinco funções', '300.00'),
('90123456700118', 6, 'dependente em todas as seis funções', '360.00'),
('90123456700118', 7, 'totalmente dependente', '420.00'),
-- Instituição 20
('01234567800119', 0, 'independente em todas as seis funções', '40.00'),
('01234567800119', 1, 'independente em cinco funções e dependente em uma função', '80.00'),
('01234567800119', 2, 'independente em quatro funções e dependente em duas funções', '160.00'),
('01234567800119', 3, 'independente em três funções e dependente em três funções', '200.00'),
('01234567800119', 4, 'independente em duas funções e dependente em quatro funções', '240.00'),
('01234567800119', 5, 'independente em uma função e dependente em cinco funções', '280.00'),
('01234567800119', 6, 'dependente em todas as seis funções', '320.00'),
('01234567800119', 7, 'totalmente dependente', '360.00');

-- Input de dados na TABELA DO AGENDAMENTO DAS ATIVIDADE

INSERT INTO tb_agendamento(data_hora_inicio, data_hora_final, id_cliente , id_atividades , id_instituicao)
VALUES
('2024-11-19 08:00:00', '2024-11-19 10:00:00', 1, 1, '12345678000100'),
('2024-11-19 09:00:00', '2024-11-19 11:00:00', 2, 2, '23456789000101'),
('2024-11-19 10:30:00', '2024-11-19 12:30:00', 3, 3, '34567890100102'),
('2024-11-19 13:00:00', '2024-11-19 15:00:00', 4, 4, '45678901200103'),
('2024-11-19 14:00:00', '2024-11-19 16:00:00', 5, 5, '56789012300104'),
('2024-11-19 15:30:00', '2024-11-19 17:30:00', 6, 6, '67890123400105'),
('2024-11-20 08:00:00', '2024-11-20 10:00:00', 7, 7, '78901234500106'),
('2024-11-20 09:30:00', '2024-11-20 11:30:00', 8, 8, '89012345600107'),
('2024-11-20 10:00:00', '2024-11-20 12:00:00', 9, 9, '90123456700108'),
('2024-11-20 11:00:00', '2024-11-20 13:00:00', 10, 10, '01234567800109'),
('2024-11-20 13:00:00', '2024-11-20 15:00:00', 11, 11, '12345678900110'),
('2024-11-20 14:30:00', '2024-11-20 16:30:00', 12, 12, '23456789000111'),
('2024-11-20 15:00:00', '2024-11-20 17:00:00', 13, 13, '34567890100112'),
('2024-11-21 08:00:00', '2024-11-21 10:00:00', 14, 14, '45678901200113'),
('2024-11-21 09:00:00', '2024-11-21 11:00:00', 15, 15, '56789012300114'),
('2024-11-21 10:30:00', '2024-11-21 12:30:00', 16, 16, '67890123400115'),
('2024-11-21 13:00:00', '2024-11-21 15:00:00', 17, 17, '78901234500116'),
('2024-11-21 14:00:00', '2024-11-21 16:00:00', 18, 18, '89012345600117'),
('2024-11-21 15:30:00', '2024-11-21 17:30:00', 19, 19, '90123456700118'),
('2024-11-22 08:00:00', '2024-11-22 10:00:00', 20, 20, '01234567800119');

-- Input de dados na TABELA DE STATUS PAGAMENTO COM INTEGRAÇÃO DE API DE UM PARCEIRO DE PAGAMENTO

INSERT INTO tb_pagamento(status_pagamento, id_preco, id_usuario, transacao_id, id_instituicao, data_pagamento)
VALUES
('aprovado', 10, 1, 'TX12345A', '12345678000100', '2024-11-01'),
('reprovado', 20, 2, 'TX12345B', '23456789000101', '2024-11-02'),
('aprovado', 30, 3, 'TX12345C', '34567890100102', '2024-11-03'),
('reprovado', 40, 4, 'TX12345D', '45678901200103', '2024-11-04'),
('aprovado', 50, 5, 'TX12345E', '56789012300104', '2024-11-05'),
('reprovado', 60, 6, 'TX12345F', '67890123400105', '2024-11-06'),
('aprovado', 70, 7, 'TX12345G', '78901234500106', '2024-11-07'),
('reprovado', 80, 8, 'TX12345H', '89012345600107', '2024-11-08'),
('aprovado', 90, 9, 'TX12345I', '90123456700108', '2024-11-09'),
('reprovado', 100, 10, 'TX12345J', '01234567800109', '2024-11-10'),
('aprovado', 110, 11, 'TX12345K', '12345678900110', '2024-11-11'),
('reprovado', 120, 12, 'TX12345L', '23456789000111', '2024-11-12'),
('aprovado', 130, 13, 'TX12345M', '34567890100112', '2024-11-13'),
('reprovado', 140, 14, 'TX12345N', '45678901200113', '2024-11-14'),
('aprovado', 15, 15, 'TX12345O', '56789012300104', '2024-11-15'),
('reprovado', 25, 16, 'TX12345P', '67890123400105', '2024-11-16'),
('aprovado', 35, 17, 'TX12345Q', '78901234500106', '2024-11-17'),
('reprovado', 45, 18, 'TX12345R', '89012345600107', '2024-11-18'),
('aprovado', 55, 19, 'TX12345S', '90123456700108', '2024-11-19'),
('reprovado', 65, 20, 'TX12345T', '01234567800109', '2024-11-20');
