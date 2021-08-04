-- Mostre os departamentos que têm um salário médio superior ao do departamento 30.
-- (dica: HAVING).

SELECT d1.nome, ROUND(AVG(e1.sal), 0) "SALARIO MEDIO"
	FROM emp e1, dep d1
	GROUP BY e1.ndep, d1.ndep
	HAVING e1.ndep = d1.ndep
		AND AVG(e1.sal) > (SELECT AVG(e2.sal)
								FROM emp e2, dep d2
								WHERE e2.ndep = d2.ndep
									AND d2.ndep = '30')
;
