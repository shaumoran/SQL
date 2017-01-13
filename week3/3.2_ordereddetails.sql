-- Using the classicmodels schema. For each order. Print the orderDate, the status and the total price of the order. Order your results from highest price to lowest
SELECT o.`orderDate`, o.`status`, p.`amount` 
FROM `orders` o, `payments` p 
WHERE o.customerNumber = p.customerNumber 
ORDER BY p.`amount` DESC LIMIT 0, 25 ;
