-- Mostre uma lista dos encarregados e seus subordinados. Ordene os resultados por nome
-- de encarregado e depois por nome de empregado.

SELECT e1.nome "NOME", e2.nome "SUBORDINADO"
	FROM emp e1, emp e2
	WHERE e1.nemp = e2.encar
	ORDER BY e1.nome ASC, e2.nome ASC
;