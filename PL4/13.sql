-- Mostre o salário médio para cada tipo de função, ordenando o resultados por ordem
-- crescente dos salários médios. O salário médio deverá ser arredondado para o menor
-- inteiro possível que seja superior ou igual ao seu valor. Apenas deverão ser mostradas
-- funções onde exista mais de 1 trabalhador.

SELECT funcao, CEIL(AVG(sal)) "SALARIO MEDIO"
	FROM emp
	GROUP BY funcao
	HAVING COUNT(*) > 1
	ORDER BY AVG(sal)
;