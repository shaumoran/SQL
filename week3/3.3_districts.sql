--Using the world schema. For each country print out the name of the country and the number of districts that country has. Order the results by the number of districts from highest to lowest.
SELECT c.`Name`, COUNT( DISTINCT i.`District`) AS myCount 
FROM `Country`c, `City` i 
WHERE c.Code = i.CountryCode G
ROUP BY c.`Name` 
ORDER BY myCount DESC LIMIT 0, 25 ;
