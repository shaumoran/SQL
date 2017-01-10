''List the id and the title of film that been borrowed more than once by customers whose first names begin with ‘D’.

SELECT f.film_id, f.title 
FROM film f, inventory i, rental r, customer c 
WHERE f.film_id = i.film_id AND i.inventory_id = r.inventory_id AND r.customer_id = c.customer_id AND c.first_name LIKE "D%" 
GROUP BY f.film_id 
HAVING COUNT(i.inventory_id) > 1 LIMIT 0, 25 ;
