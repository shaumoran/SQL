--Using the classicmodels schema. For each order, print out the orderDate, the status of the order and the name of the customer who placed the order.
SELECT o.`orderDate`, o.`status`, c.`customerName` 
FROM `orders` o, `customers` c 
WHERE c.customerNumber = o.customerNumber LIMIT 0, 25 ;
