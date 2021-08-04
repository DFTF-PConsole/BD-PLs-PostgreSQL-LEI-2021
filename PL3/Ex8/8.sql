-- Mostre o nome, função, salário e local de trabalho de todos os empregados de ’Coimbra’
-- e cujo salário é superior a 150000.

SELECT emp.nome, emp.funcao, emp.sal, dep.local "LOCAL"
	FROM emp, dep
		WHERE emp.sal > 150000
		AND emp.ndep = dep.ndep
		AND dep.local = 'Coimbra'
;