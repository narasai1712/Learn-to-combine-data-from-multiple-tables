TASK 5: SQL JOINS (Inner, Left, Right, Full)

1  INNER JOIN: Show orders with customer names

SELECT o.order_id, c.name AS customer_name, o.total_amount, o.status
FROM Orders o
INNER JOIN Customer c ON o.customer_id = c.customer_id;



2   INNER JOIN: Show order details with product names

SELECT od.detail_id, o.order_id, p.name AS product_name, od.quantity, od.subtotal
FROM Order_Details od
INNER JOIN Orders o ON od.order_id = o.order_id
INNER JOIN Product p ON od.product_id = p.product_id;



3   LEFT JOIN: Show all customers and their orders (including customers with no orders)

SELECT c.name, o.order_id, o.total_amount, o.status
FROM Customer c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;



4   RIGHT JOIN: Show all orders and customer names (even if customer data missing)

SELECT c.name AS customer_name, o.order_id, o.total_amount
FROM Customer c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;



5   FULL OUTER JOIN: Show all customers and orders (match and unmatched)

SELECT c.name, o.order_id, o.total_amount
FROM Customer c
FULL OUTER JOIN Orders o ON c.customer_id = o.customer_id;



6   CROSS JOIN: Show all combinations of customers and products

SELECT c.name AS customer_name, p.name AS product_name
FROM Customer c
CROSS JOIN Product p;



7   SELF JOIN: Example on Product table (compare price range)

SELECT p1.name AS product1, p2.name AS product2
FROM Product p1, Product p2
WHERE p1.price < p2.price;



8   NATURAL JOIN: Orders and Payments (matching by order_id)

SELECT *
FROM Orders
NATURAL JOIN Payment;



9   JOIN 3 Tables: Customer, Orders, Payment

SELECT c.name AS customer_name, o.order_id, o.total_amount, p.payment_method
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id;



10   INNER JOIN with condition

SELECT c.name, o.order_id, o.total_amount
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 30000;