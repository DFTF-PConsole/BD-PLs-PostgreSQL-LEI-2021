-- Encontre a diferença entre o salário mais alto e o mais baixo para cada departamento.


SELECT ndep, MAX(sal) - MIN(sal)
	FROM emp
	GROUP BY ndep
	ORDER BY ndep
;