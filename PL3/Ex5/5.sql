-- Mostre o escalão de descontos (ou escalões) de cada função. O resultado deve ficar
-- ordenado por escalão e dentro de cada escalão por função. Como pode existir mais do
-- que uma pessoa por função dentro do mesmo escalão poderiam aparecer linhas
-- repetidas. Garanta que não aparecem linhas repetidas.

SELECT DISTINCT d.escalao, emp.funcao
	FROM descontos AS d, emp
		WHERE emp.sal BETWEEN d.salinf AND d.salsup
	ORDER BY d.escalao ASC, emp.funcao ASC
;