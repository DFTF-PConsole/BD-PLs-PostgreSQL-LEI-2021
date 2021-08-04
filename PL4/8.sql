-- Encontre o salário mais baixo, mais alto e o salário médio de todos os funcionários.


SELECT MIN(sal), MAX(sal), ROUND(AVG(sal), 2)
	FROM emp
;