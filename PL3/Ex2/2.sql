SELECT e.nome "NOME", e.sal "SALARIO", e.ndep "N DEP", d.nome "DEPARTAMENTO"
	FROM dep AS d, emp AS e
		WHERE e.ndep = d.ndep 
		AND UPPER(e.nome) LIKE 'A% R%'
	ORDER BY d.nome ASC, e.nome ASC
; 