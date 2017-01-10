 ''Using the sakila database, how many people have spent more than €100 in total renting films?
 SELECT COUNT(*) 
 FROM( SELECT c.customer_id FROM customer c, payment p 
 WHERE c.customer_id = p.customer_id 
 GROUP BY c.customer_id 
 HAVING SUM(p.amount)>100)Banana LIMIT 0, 25 ;
