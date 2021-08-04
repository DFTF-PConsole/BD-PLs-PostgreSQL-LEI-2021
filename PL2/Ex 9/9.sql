SELECT nome "NOME", funcao "FUNCAO"
	FROM emp
 WHERE UPPER(nome) LIKE '%V%'
	OR UPPER(nome) LIKE '%U%'
;