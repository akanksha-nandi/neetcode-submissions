-- Write your query below
SELECT name FROM customers LEFT OUTER JOIN orders ON customers.id = customer_id WHERE orders.id IS NULL;