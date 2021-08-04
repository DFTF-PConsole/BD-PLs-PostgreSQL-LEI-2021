
INSERT INTO emp2 (nemp, nome, funcao, encar, sal, premios, ndep)
		SELECT nemp, UPPER(nome), funcao, encar, GREATEST(sal, 70001), premios, ndep 
			FROM emp
			WHERE nemp != 1902
				AND nemp != 1369
;


SELECT nemp, nome, encar, sal, premios, ndep 
	FROM emp2 
	ORDER BY ndep
;