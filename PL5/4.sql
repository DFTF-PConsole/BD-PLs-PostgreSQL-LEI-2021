-- Encontre os empregados que ganham o maior salário em cada departamento. (dica: IN).

SELECT e1.nome, e1.sal, e1.ndep
	FROM emp e1
	WHERE (e1.ndep, e1.sal) IN (SELECT e2.ndep, MAX(e2.sal)
								FROM emp e2
							 	GROUP BY e2.ndep)
;