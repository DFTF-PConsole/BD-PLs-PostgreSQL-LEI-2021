SELECT e.nome "NOME", funcao "FUNCAO", d.nome "DEPARTAMENTO"
	FROM dep AS d, emp AS e
		WHERE e.ndep = d.ndep
	ORDER BY d.nome ASC, e.nome ASC
;