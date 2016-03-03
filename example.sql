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


SELECT 	round(min(reading),3) as minreading, 
		round(max(reading),3) as maxreading,
		round(avg(reading),3) as avereading, 
		quant,
		taken
FROM Survey
GROUP BY quant, taken;


SELECT 	round(min(reading),3) as minreading, 
		round(max(reading),3) as maxreading,
		round(avg(reading),3) as avereading, 
		quant,
		taken
FROM Survey
GROUP BY quant, taken
ORDER BY taken;



/* Order of Clauses
SELECT
FROM
WHERE
GROUP BY
ORDER BY
*/


SELECT * 
FROM Site JOIN Visited;

SELECT * 
FROM Site 
	JOIN Visited
	ON Site.name = Visited.site
;

SELECT Site.lat,
	Site.long,
	Visited.dated
FROM Site 
	JOIN Visited
	ON Site.name = Visited.site
;

Select 
	site.lat, site.long, 
	visited.dated, 
	survey.quant, survey.reading
FROM Site
JOIN Visited ON Site.name=Visited.site
JOIN Survey ON visited.ident=survey.taken
Where Visited.dated is NOT NULL;

SELECT * 
FROM Site, Visited;


