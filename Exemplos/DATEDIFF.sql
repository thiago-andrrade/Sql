-- Exemplo utilizando o DATEDIFF para Converter os dias em ANOS

SELECT 
	FLOOR(DATEDIFF(DAY, RA_NASC, GETDATE()) / 365.25) AS IDADE,
	RA_NOME AS NOME
FROM 
	SRA100 
WHERE 
	RA_CIC =''
	AND D_E_L_E_T_ =''
	
-----------------------------------------------------------------------------
--Exemplo utilizando o DATEDIFF para obter a diferença entre as datas em DIAS	

SELECT 
	DATEDIFF(DAY, RA_NASC, GETDATE()) AS QTD_DIAS,
	RA_NOME AS NOME
FROM
	SRA100
WHERE 
	RA_CIC ='40951004867' 
	AND D_E_L_E_T_ =''

---
@thiago.andrrade
