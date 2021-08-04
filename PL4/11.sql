-- Mostre quantos empregados existem para cada função. Ordene o resultado pela função.


SELECT funcao, COUNT(*) "QUNATIDADE"
	FROM emp
	GROUP BY funcao
	HAVING funcao = 'Analista'
		OR UPPER(funcao) LIKE '%O'
	ORDER BY funcao
;