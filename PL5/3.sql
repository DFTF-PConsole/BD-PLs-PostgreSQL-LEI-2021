SELECT nome, funcao, sal
	FROM emp
	WHERE funcao = (SELECT funcao
					FROM emp
					WHERE nome = 'Olga Costa')
	ORDER BY sal
;