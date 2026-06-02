
/*GROUP BY 
	Utilize o GROUP BY para criara uma consulta 
	e descobrir o total ´funcionários por sexo 
*/

SELECT sexo,
	COUNT (*) as 'qtd_func'
	FROM func
	GROUP BY sexo; 

--====================================
SELECT nome,
COUNT (*) AS 'genero'
FROM func
GROUP BY nome;

--====================================
	SELECT *
	FROM func