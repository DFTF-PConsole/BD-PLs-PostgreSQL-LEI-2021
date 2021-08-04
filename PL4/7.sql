-- Escreva um comando que produza o seguinte resultado. Note que antes de cada nome
-- de empregado existem 4 sinais de ’>’ (maior que) e um espaço, e que depois de cada
-- nome existe um espaço e caracteres ’<’ (menor que) suficientes até se atingir um
-- comprimento total de 25 caracteres.

SELECT nome, RPAD(CONCAT(CONCAT('>>>> ', nome), ' '), 25, '<') "Cenas com Strings"
	FROM emp
	ORDER BY nome
;