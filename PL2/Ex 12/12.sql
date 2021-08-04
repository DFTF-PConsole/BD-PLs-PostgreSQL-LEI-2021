SELECT nome "NOME", 0.1 * ((12 * sal) + COALESCE(premios, 0)) "10% Sal. Anual", premios "PREMIOS"
	FROM emp
 WHERE funcao = 'Vendedor' -- mesmo que pareça inutil deve estar
 	AND premios < 0.1 * ((12 * sal) + COALESCE(premios, 0))
 -- ORDER BY 2 -- muito facil de fazer, dificil de ler, muito facil de estragar
 ORDER BY "10% Sal. Anual", nome
;