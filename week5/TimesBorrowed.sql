''Using the sakila database, List the name, title and category of films and the number of times they have have been borrowed from the store with id 1. Order your results alphabetically by category name.
SELECT f.title, c.name, COUNT(r.rental_id) 
FROM film f, film_category fc, category c, inventory i, rental r 
WHERE f.film_id = fc.film_id AND fc.category_id = c.category_id AND fc.film_id = i.film_id AND i.inventory_id = r.inventory_id AND i.store_id = 1 
GROUP BY f.title LIMIT 0, 25 ;
