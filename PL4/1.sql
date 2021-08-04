-- Mostre o nome, função e departamento dos vendedores e apenas deles. O nome deverá
-- aparecer todo em maiúsculas, a função em minúsculas e o departamento com a primeira
-- letra em maiúscula e o resto em minúsculas. Ordene o resultado por nome do
-- funcionário.

SELECT UPPER(emp.nome) "NOME", LOWER(emp.funcao) "funcao", dep.nome "Departamento"
	FROM emp, dep
	WHERE emp.ndep = dep.ndep
		AND emp.funcao = 'Vendedor'
	ORDER BY emp.nome ASC
;