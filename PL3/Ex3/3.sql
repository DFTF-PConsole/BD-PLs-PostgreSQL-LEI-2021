SELECT e.nome "NOME", e.sal "SALARIO", d.nome "DEPARTAMENTO", d.local "LOCALIZACAO"
	FROM dep AS d, emp AS e
		WHERE e.ndep = d.ndep 
		AND e.sal < 150000
;