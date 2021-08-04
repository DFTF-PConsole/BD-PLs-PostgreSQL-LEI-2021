-- Encontre os empregados que ganham mais do que o salário mais baixo do departamento
-- 30. Não use a função min. Ordene os salários mostrados por ordem decrescente.
-- (dica: ANY).

-- com MIN
--SELECT e1.nome, e1.sal, e1.funcao, e1.ndep
--	FROM emp e1
--	WHERE e1.sal > (SELECT MIN(e2.sal)
--							FROM emp e2
--							WHERE e2.ndep = '30')
--	ORDER BY e1.sal DESC
--;

-- com ANY
SELECT e1.nome, e1.sal, e1.funcao, e1.ndep
	FROM emp e1
	WHERE e1.sal > ANY (SELECT e2.sal
							FROM emp e2
							WHERE e2.ndep = '30')
	ORDER BY e1.sal DESC
;
