SELECT nome "NOME", funcao "FUNCAO", ((12*sal) + COALESCE(premios, 0)) "Renumeração Anual"
	FROM emp
;