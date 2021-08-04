SELECT nome "NOME", funcao "FUNCAO"
	FROM emp
 WHERE UPPER(nome) LIKE 'A%US%'
	OR UPPER(nome) LIKE 'R%EI%'
;