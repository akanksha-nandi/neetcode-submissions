-- Write your query below
SELECT customers.customer_id, customer_name FROM customers INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customer_name HAVING
    SUM(CASE WHEN product_name = 'A' THEN 1 ELSE 0 END) > 0
    AND SUM(CASE WHEN product_name = 'B' THEN 1 ELSE 0 END) > 0
    AND SUM(CASE WHEN product_name = 'C' THEN 1 ELSE 0 END) = 0
ORDER BY customer_name;