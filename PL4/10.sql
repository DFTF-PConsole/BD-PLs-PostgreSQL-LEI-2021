-- Mostre quantos empregados existem para cada função. Ordene o resultado pela função.


SELECT funcao, COUNT(*) "QUNATIDADE"
	FROM emp
	GROUP BY funcao
	ORDER BY funcao
;