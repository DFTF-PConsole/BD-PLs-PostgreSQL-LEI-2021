-- Mostre o departamento que não tem empregados usando o operador MINUS (EXCEPT)

SELECT *
	FROM dep
	
EXCEPT

SELECT dep.ndep, dep.nome, dep.local
	FROM emp, dep
	WHERE emp.ndep = dep.ndep
;