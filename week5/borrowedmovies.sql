''Using sakila database, what is the most borrowed category by people spending more than a hundred euro on films?
SELECT ca.name FROM( SELECT c.customer_id 
    FROM customer c, payment p 
    WHERE c.customer_id = p.customer_id 
    GROUP BY c.customer_id HAVING SUM(p.amount)>100)B, rental r, inventory i, film_category fc, category ca 
WHERE B.customer_id = r.customer_id AND r.inventory_id = i.inventory_id AND i.film_id = fc.film_id AND fc.category_id = ca.category_id 
GROUP BY ca.category_id 
ORDER BY COUNT(ca.category_id) desc LIMIT 1;
