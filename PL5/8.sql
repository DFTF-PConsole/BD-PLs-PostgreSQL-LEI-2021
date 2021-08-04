-- media do salario mais baixo com o mais alto do departamento com mais empregados (30)

SELECT avg(sal) “Media”, ndep “NDep”									-- apresenta sal-media + ndep
	FROM emp															-- da tabela emp
	WHERE (ndep, sal) IN (SELECT ndep, max(sal)							-- 
							FROM emp									-- 
							GROUP BY ndep)								-- 
		OR (ndep,sal) IN (SELECT ndep, min(sal)							-- 
							FROM emp									-- 
							GROUP BY ndep)								-- 
	GROUP BY ndep														-- 
	HAVING ndep = (SELECT ndep											-- 
					FROM emp											-- 
					GROUP BY ndep										-- 
					HAVING COUNT(*)>= ALL (SELECT COUNT(*)				-- 
												FROM emp				-- 
												GROUP BY ndep))			-- 
	ORDER BY ndep, avg(sal)												-- 
;
