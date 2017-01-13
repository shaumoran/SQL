--Using the `world` schema print out the names of all spoken languages which have morethan 1,000,000 speakers. Ordered by the number of people who speak them, from most to least.

 SELECT l.Language 
 FROM Country c, CountryLanguage l 
 WHERE c.Code = l.CountryCode and (c.Population * l.Percentage)/100 >= 1000000 
 ORDER BY (c.Population * l.Percentage)/100 
 DESC LIMIT 0, 25 ;
