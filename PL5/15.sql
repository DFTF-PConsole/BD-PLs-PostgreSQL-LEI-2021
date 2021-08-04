-- Apague de emp2 os empregados que recebam menos que a média de salários dos
-- empregados do seu departamento (use subconsulta correlacionada).

-- eliminacao
DELETE FROM emp2 e2
	WHERE e2.sal < (SELECT AVG(e1.sal)
				 		FROM emp2 e1
				 		WHERE e1.ndep = e2.ndep) 
				 
;


-- verificar tabela
SELECT nemp, nome, encar, sal, premios, ndep 
	FROM emp2 
	ORDER BY ndep
;


-- visualizar antes de eliminar
SELECT *
	FROM emp2 e2
	WHERE e2.sal < (SELECT AVG(e1.sal)
				 		FROM emp2 e1
				 		WHERE e1.ndep = e2.ndep) 
				 
;