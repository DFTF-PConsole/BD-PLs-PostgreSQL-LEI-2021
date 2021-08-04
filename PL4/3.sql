-- Escreva um comando que determine quantos empregados não ganham prémios. O
-- resultado deve ser semelhante ao que se segue.

SELECT COUNT(emp) "Empregados sem Premio"
	FROM emp
	WHERE emp.premios IS NULL
;