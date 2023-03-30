---CRIANDO AS TABELAS (CREATE)
CREATE TABLE empresa (
id_empresa INT PRIMARY KEY,
nome_empresa VARCHAR NOT NULL,
data_cadastro VARCHAR,
cnpj VARCHAR NOT NULL,
telefone VARCHAR,
email VARCHAR
);

CREATE TABLE tecnologia (
tecnologia_id INT PRIMARY KEY,
nome VARCHAR NOT NULL,
area VARCHAR
);

CREATE TABLE resiliadata (
id_resiliadata INT PRIMARY KEY,
data_resilia_cadastro DATE NOT NULL,
empresa_id INT NOT NULL,
id_tecnologia INT NOT NULL,
FOREIGN KEY (empresa_id) REFERENCES empresa(id_empresa),
FOREIGN KEY (id_tecnologia) REFERENCES tecnologia(tecnologia_id)
);


--- PREENCHENDO AS TABELAS ATRAVÉS DOS INSERTS
INSERT INTO empresa (id_empresa, nome_empresa, data_cadastro, cnpj, telefone, email) VALUES
(1, 'Google', '29.03.2023', '76.734.793/0001-34', '(11) 98573-7492', 'realgoogle@gmail.com'),
(2, 'Tesla', '20.08.2022',  '67.333.332/0001-69', '(96) 98426-8349', 'tesla@gmail.com'),
(3, 'Apple', '02.02.2023', '77.010.054/0001-62', '(18) 96985-5446', 'apple@gmail.com'),
(4, 'Amazon', '01.001.2023, ', '77.592.955/0001-00', '(83) 98352-6116', 'realamazom@gmail.com');


INSERT INTO tecnologia (tecnologia_id, nome, area) VALUES
(1, 'PowerBi', 'Vizualização de Dados'),
(2, 'SQL', ' Banco de Dados'),
(3, 'Tableau', 'Vizualização de Dados'),
(4, 'SQL', 'Banco de Dados'),
(5, 'Pyhton', 'Programação'),
(6, 'SQL', 'Banco de Dados'),
(7, 'Java', 'Programação'),
(8, 'Java', 'Programação'),
(9, 'Python', 'Programação'),
(10, 'Excel', 'Relatórios'),
(11, 'PowerBi', 'Vizualização de Dados'),
(12, 'Pandas', 'Tratamento e vizualização de dados');

--- ETAPA DE INSERTS -- DOS DOIS SEMESTRES --
---SENDO ESSE O PRIMEIRO ---
INSERT INTO resiliadata (id_resiliadata, data_resilia_cadastro, empresa_id, id_tecnologia) VALUES
(1, '2022-03-4', 1, 5),
(2, '2022.04.15', 1, 12),
(3, '2022.01.08', 2, 4),
(4, '2022.02.15', 2, 5),
(5, '2022.05.25', 3, 2),
(6, '2022.04.24', 3, 2),
(7, '2022.04.07', 4, 6),
(8, '2022.02.12', 4, 11),
(9, '2022.03.01', 2, 7),
(10,'2022.02.02', 1, 9);

-- REFERENTE AO SEGUNDO SEMESTRE
INSERT INTO resiliadata (id_resiliadata, data_resilia_cadastro, empresa_id, id_tecnologia) VALUES
(11, '2022.07.13', 1, 6),
(12, '2022.09.10', 2, 5),
(13, '2022.10.01', 4, 4),
(14, '2022.12.19', 4, 12),
(15, '2022.09.17', 3, 7),
(16, '2022.07.22', 3, 6),
(17, '2022.08.13', 2, 9),
(18, '2022.11.08', 2, 8),
(19, '2022.12.06', 1, 5),
(20, '2022.07.05', 1, 4);
