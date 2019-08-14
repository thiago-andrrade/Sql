-- Criando Tabela Temporaria
SET NOCOUNT ON;
CREATE TABLE ##BasePrc (
    ESTADOX VARCHAR(20),
    PRODUTOX VARCHAR(20),
    TOT_BASE numeric(20,4));
  
-- Inserindo Dados na Tabela Temporaria
INSERT INTO ##BasePrc (ESTADOX, PRODUTOX, TOT_BASE)
    SELECT D2_EST, D2_COD, SUM(D2_TOTAL)
    FROM SD2010
    WHERE D2_EMISSAO BETWEEN '20190725' AND '20190730'
    GROUP BY D2_EST, D2_COD

-- Selecionando Dados
SELECT TOP 10 * FROM ##BasePrc;

-- Deletando tabela
DROP TABLE ##BasePrc;

--
@thiago.andrrade
