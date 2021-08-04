SELECT nome, funcao, sal
	FROM emp
	WHERE sal = (SELECT MIN(sal)
					FROM emp)
;