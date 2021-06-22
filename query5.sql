SET search_path TO 'Task5';

SELECT customers.name
FROM customers 
LEFT JOIN orders ON customers.id=orders.customerid
WHERE orders.customerid IS NULL