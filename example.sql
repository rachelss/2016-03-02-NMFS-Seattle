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
/* 	
<= 
>=
!=
= (R only ==)
<>	 */

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
	
SELECT dated
FROM Visited;

	
SELECT max(dated)
FROM Visited;


SELECT min(dated)
FROM Visited;

SELECT avg(reading)
FROM Survey
WHERE quant='sal';

/* 
Aggregation functions:
sum
min
max
avg
count

 */
SELECT round(avg(reading),3)
FROM Survey

SELECT 	round(avg(reading),3) as avereading, 
		quant
FROM Survey
GROUP BY quant;

