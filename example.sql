SELECT 	family, 
		personal 
FROM 	Person;

.headers on
.mode column


SELECT * 
FROM Person; 

.help
	
	
SELECT quant FROM Survey;

SELECT DISTINCT quant FROM Survey;

SELECT DISTINCT 
	taken, 
	quant 
FROM 
	Survey;
	
	
	
	
SELECT 
	* 
FROM 
	person 
ORDER BY 
	ident;
	

SELECT 
	taken, 
	person, 
	quant 
FROM Survey 
ORDER BY 
	taken, 
	person DESC
;
	
<= 
>=
!=
= (R only ==)
<>	

SELECT * 
FROM Survey 
WHERE (person='lake' 
	OR person='roe') 
	AND quant='sal'
;

SELECT *
FROM Visited
WHERE site LIKE 'D%'	
;  

SELECT 
	reading,
	1.05*reading as adjreading   /* -- Adjusting incorrect raditaion */
FROM 
	Survey
WHERE
	quant = 'rad'
	;