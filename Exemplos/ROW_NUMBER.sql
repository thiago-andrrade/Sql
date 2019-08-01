-- Cria uma Coluna com a Numeração das Linhas em SQL
SELECT
    ROW_NUMBER() OVER(ORDER BY C5_NUM ASC) AS ROW,
    C5_FILIAL,
    C5_NUM
FROM
    SC5010
WHERE
    C5_EMISSAO BETWEEN '20190501' AND '20190531'
    AND C5_FILIAL ='02'
    AND D_E_L_E_T_ =''
GROUP BY 
  C5_FILIAL, C5_NUM

---
@thiago.andrrade
