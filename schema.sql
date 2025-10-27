1) Retrieve all customer records
SELECT * FROM Customer;

2) Retrieve only customer names and email addresses
SELECT name, email FROM Customer;

3) Find customers from a specific city
SELECT * FROM Customer WHERE address = 'Bangalore';

4) Find all products with price greater than 20000
SELECT name, price FROM Product WHERE price > 20000;

5) Find products within a price range using BETWEEN
SELECT name, price FROM Product WHERE price BETWEEN 10000 AND 60000;

6) Find orders that are marked as 'Completed'
SELECT * FROM Orders WHERE status = 'Completed';

7) Retrieve payments made via Credit Card
SELECT * FROM Payment WHERE payment_method = 'Credit Card';

8) Use LIKE to find customers whose name starts with 'A'
SELECT * FROM Customer WHERE name LIKE 'A%';

9) Find products where category contains 'Electronics'
SELECT * FROM Product WHERE category LIKE '%Electronics%';

10) Combine conditions using AND/OR
SELECT * FROM Product WHERE price > 10000 AND stock > 10;

11) Display customers who are from Mumbai or Delhi
SELECT * FROM Customer WHERE address IN ('Mumbai', 'Delhi');

12) Sort all products in descending order of price
SELECT * FROM Product ORDER BY price DESC;

13) Show distinct product categories
SELECT DISTINCT category FROM Product;

14) List top 2 most expensive products
SELECT * FROM Product ORDER BY price DESC FETCH FIRST 2 ROWS ONLY;

15) Use aliasing for better readability
SELECT name AS "Customer Name", email AS "Email ID" FROM Customer;

16) Combine order details with product info using join
SELECT od.detail_id, p.name AS product_name, od.quantity, od.subtotal
FROM Order_Details od
JOIN Product p ON od.product_id = p.product_id;

17) Combine orders and customer data
SELECT o.order_id, c.name AS customer_name, o.total_amount, o.status
FROM Orders o
JOIN Customer c ON o.customer_id = c.customer_id;

18) List total amount and payment details per order
SELECT o.order_id, o.total_amount, p.payment_method, p.status
FROM Orders o
JOIN Payment p ON o.order_id = p.order_id;
