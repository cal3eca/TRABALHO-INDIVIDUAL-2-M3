--- AQUI ESTÃO AS PERGUNTAS DO PROJETO QUE SERÃO RESPONDIDAS PELO BANCO DE DADOS.
--- 1. QUAL EMPRESA UTILIZA O MAIOR NÚMERO DE TECNOLOGIAS REFERENTE A ÚLTIMA PESQUISA DO SEGUNDO SEMESTRE DE 2022.
SELECT nome_empresa, COUNT(*) as tecnologias
FROM empresa
JOIN resiliadata ON empresa.id_empresa = resiliadata.empresa_id
WHERE resiliadata.data_resilia_cadastro between '2022-07-01' and '2022-12-31'
GROUP BY nome_empresa
ORDER BY tecnologias DESC
LIMIT 3;
--- R: A empresa com o maior número é a Google, com 4 tecnologias.

-- 2. QUAL EMPRESA UTILIZA O MENOR NÚMERO DE TECNOLOGIAS NO PRIMERIO SEMESTRE DE 2022.
SELECT nome_empresa, COUNT(resiliadata.id_tecnologia) as tecnologias
FROM empresa
INNER JOIN resiliadata ON empresa.id_empresa = resiliadata.empresa_id
WHERE resiliadata.data_resilia_cadastro between '2022-01-01' and '2022-06-30'
GROUP BY nome_empresa
ORDER BY tecnologias ASC
LIMIT 3;
--- R : As empresas estão empatadas com 2 tecnologias. (Amazon, Apple, Tesla)

-- 3. QUANTAS EMPRESAS UTILIZAM TECNOLOGIAS DA ÁREA DE DADOS.
SELECT COUNT(DISTINCT empresa_id) as Número_de_Empresas
FROM resiliadata
WHERE id_tecnologia IN (
  SELECT tecnologia_id
  FROM tecnologia
  WHERE area LIKE '%Dados%'
);
--- R: APENAS 1 EMPRESA TRABALHA COM TECNOLOGIAS RELACIONADAS A DADOS

-- 4. QUANTAS EMPRESAS UTILIZAM TECNOLOGIAS QUE NÃO SÃO DA ÁREA DE DADOS.
SELECT COUNT(DISTINCT empresa_id) as NÚMERO_EMPRESAS
FROM resiliadata
WHERE id_tecnologia NOT IN (
  SELECT tecnologia_id
  FROM tecnologia
  WHERE area LIKE '%Dados%'
);
-- R: número de empresas = 3.


