--------------------------------------------------------------------------------------------------------------------------
--Exemplo 1 - Busca a Posição de um determinado Texto, no exemplo abaixo a palavra que vou buscar é PEDIDO
SELECT
    C5_HASHPT,
    C5_MENNOTA,
    CHARINDEX('PEDIDO', C5_MENNOTA)
    C5_NUM
FROM
    SC5080
WHERE
    C5_HASHPT =''
    AND C5_MENNOTA <>''
    AND C5_EMISSAO >'20190607'
    AND D_E_L_E_T_ <>'*'
 
 --------------------------------------------------------------------------------------------------------------------------
--Exemplo 2 - Com a posição do campo obtida, agora conseguimos dar um SUBSTRING para pegar o texto a partir dessa posição.
SELECT
    C5_HASHPT,
    C5_MENNOTA,
    CHARINDEX('PEDIDO', C5_MENNOTA),
    SUBSTRING(C5_MENNOTA,CHARINDEX('PEDIDO', C5_MENNOTA),20)
    C5_NUM
FROM
    SC5080
WHERE
    C5_HASHPT =''
    AND C5_MENNOTA <>''
    AND C5_EMISSAO >'20190607'
    AND D_E_L_E_T_ <>'*'
   
--------------------------------------------------------------------------------------------------------------------------
-- Exemplo:
-- Para o texto :Sabado Emitimos o PEDIDO 123456
-- O CHARINDEX irá retornar a posição 18, e ao adicionar o Substring o retorno será PEDIDO 123456

---
@thiago.andrrade
