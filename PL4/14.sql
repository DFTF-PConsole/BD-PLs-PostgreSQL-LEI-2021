-- Indique o salário máximo, mínimo e médio e a quantidade de empregados para cada
-- função e de cada departamento (grupos e subgrupos). Exclua registos individuais de
-- nome ’Jorge Sampaio’ e resultados colectivos que apresentem um salário máximo
-- inferior ou igual a 200000. Ordene por departamento e depois por salário máximo.

SELECT ndep "N DEP", funcao "FUNCAO", MAX(sal) "SALARIO MAXIMO", MIN(sal) "SALARIO MINIMO", ROUND(AVG(sal), 0) "SALARIO MEDIO", COUNT (*) "NUMERO DE EMPREGADOS"
	FROM emp
	WHERE nome != 'Jorge Sampaio'
	GROUP BY ndep, funcao
	HAVING MAX(sal) > 200000
	ORDER BY ndep, "SALARIO MAXIMO"
;

