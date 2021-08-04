-- Escreva um comando que conte o número de empregados existentes, calcule o salário
-- médio mensal e o total de remuneração anual auferido pelo conjunto de todos os
-- empregados.

SELECT COUNT(emp) "Total de Empregados", ROUND(AVG(emp.sal), 2) "Salario Medio Mensal", SUM(emp.sal)*12 + SUM(emp.premios) "Renumeracao Total Anual"
	FROM emp
;