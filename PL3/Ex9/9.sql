-- Apresente o nome, função, escalão salarial e nome de departamento para todos os
-- empregados com excepção dos empregados cuja função é ‘Continuo’. O resultado deve
-- ficar ordenado por ordem decrescente de escalão salarial e dentro de cada escalão por
-- departamento.

SELECT emp.nome, emp.funcao, emp.sal, dc.escalao, dep.nome "DEPARTAMENTO"
	FROM emp, dep, descontos AS dc
	WHERE emp.ndep = dep.ndep
		AND emp.sal BETWEEN dc.salinf AND dc.salsup
		AND emp.funcao != 'Continuo'
	ORDER BY dc.escalao DESC, dep.nome
	
--EXCEPT

--SELECT emp.nome, emp.funcao, emp.sal, dc.escalao, dep.nome "DEPARTAMENTO"
	--FROM emp, dep, descontos AS dc
	--WHERE emp.funcao = 'Continuo'
;