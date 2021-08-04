-- A mesma informação que na questão anterior mas agora mostre também o nome do
-- departamento de cada empregado.

SELECT emp.nome, emp.funcao, emp.sal, dep.nome "DEPARTAMENTO"
	FROM descontos AS d, emp, dep
		WHERE emp.sal BETWEEN d.salinf AND d.salsup
		AND d.escalao = 4
		AND emp.ndep = dep.ndep
	ORDER BY emp.nome ASC
;