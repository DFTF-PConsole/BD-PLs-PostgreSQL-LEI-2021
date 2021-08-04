-- Encontre os empregados que ganham mais do que qualquer empregado do
-- departamento cujo nome é ’Vendas’. Não use a função max. Ordene os salários
-- mostrados por ordem decrescente. (dica: ALL).

-- com ALL
SELECT e1.nome, e1.sal, e1.funcao, e1.ndep
	FROM emp e1
	WHERE e1.sal > ALL (SELECT e2.sal
						FROM emp e2, dep d1
						WHERE e2.ndep = d1.ndep
							AND d1.nome = 'Vendas')
	ORDER BY e1.sal DESC
;


-- com MAX
--SELECT e1.nome, e1.sal, e1.funcao, e1.ndep
--	FROM emp e1
--	WHERE e1.sal > (SELECT MAX(e2.sal)
--						FROM emp e2, dep d1
--						WHERE e2.ndep = d1.ndep
--							AND d1.nome = 'Vendas')
--	ORDER BY e1.sal DESC
--;

-- Help
--SELECT MAX(e2.sal)
--	FROM emp e2, dep d1
--	WHERE e2.ndep = d1.ndep
--		AND d1.nome = 'Vendas'
--;
