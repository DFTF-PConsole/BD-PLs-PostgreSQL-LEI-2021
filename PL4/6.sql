-- Mostre a lista dos Contínuos e o respectivo salário com um aumento de 13,55% para
-- estes empregados. O salário depois do aumento deverá ser arredondado para um
-- numero inteiro.

SELECT emp.nome, emp.funcao, emp.sal, ROUND(emp.sal * 1.1355, 0) "SAL COM AUMENTO"
	FROM emp
	WHERE emp.funcao = 'Continuo'
;