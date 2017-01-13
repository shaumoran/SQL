-- Using the `classicmodels` schema. Print out the name, description and number of sales for the top three productLines. Order your results from highest to lowest.
SELECT pl.productLine, pl.textDescription, SUM(o.quantityOrdered) as Sales 
FROM productlines pl, products p, orderdetails o 
WHERE pl.productLine = p.productLine AND p.productCode = o.productCode 
GROUP BY pl.productLine 
ORDER BY Sales DESC LIMIT 3;
