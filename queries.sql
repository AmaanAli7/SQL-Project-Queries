USE online_bookstore;

-- 1. All customers
SELECT * FROM customers;

-- 2. Programming books
SELECT title, author, price FROM books
WHERE category = 'Programming';

-- 3. Books cheaper than 500
SELECT title, price FROM books
WHERE price < 500
ORDER BY price ASC;

-- 4. Orders with customer names
SELECT o.order_id, c.name AS customer, o.order_date, o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- 5. Total value of every order
SELECT o.order_id, c.name AS customer,
       SUM(oi.quantity * oi.price) AS order_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, c.name
ORDER BY order_total DESC;

-- 6. Total amount spent by each customer
SELECT c.name,
       COALESCE(SUM(oi.quantity * oi.price), 0) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

-- 7. Best-selling books
SELECT b.title, SUM(oi.quantity) AS units_sold
FROM books b
JOIN order_items oi ON b.book_id = oi.book_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status <> 'Cancelled'
GROUP BY b.book_id, b.title
ORDER BY units_sold DESC;

-- 8. Orders by status
SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;

-- 9. Customers who spent more than 700
SELECT c.name, SUM(oi.quantity * oi.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status <> 'Cancelled'
GROUP BY c.customer_id, c.name
HAVING total_spent > 700;

-- 10. Low-stock books
SELECT title, stock FROM books
WHERE stock < 10
ORDER BY stock;

-- 11. Average price by category
SELECT category, ROUND(AVG(price),2) AS average_price
FROM books
GROUP BY category
ORDER BY average_price DESC;

-- 12. Most valuable customer
SELECT c.name, SUM(oi.quantity * oi.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status <> 'Cancelled'
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 1;
