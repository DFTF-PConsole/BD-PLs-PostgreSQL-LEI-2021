-- Mostre o nome, função e salário de todos os empregados de escalão salarial igual a 4,
-- sendo o resultado ordenado por nome de empregado.

SELECT emp.nome, emp.funcao, emp.sal
	FROM descontos AS d, emp
		WHERE emp.sal BETWEEN d.salinf AND d.salsup
		AND d.escalao = 4
	ORDER BY emp.nome ASC
;