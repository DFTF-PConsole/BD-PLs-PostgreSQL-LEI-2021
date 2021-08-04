-- Mostre o salário mais baixo dos empregados que trabalham para cada Encarregado.
-- Exclua os grupos em que o salário mínimo seja inferior a 200000 e ordene o resultado
-- por salário.

SELECT encar, MIN(sal)
	FROM emp
	GROUP BY encar
	HAVING MIN(sal) >= 200000
	ORDER BY MIN(sal)
;