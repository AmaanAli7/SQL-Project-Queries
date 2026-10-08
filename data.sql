USE online_bookstore;

INSERT INTO customers (name,email,city) VALUES
('Aman Ali','aman@example.com','Jhansi'),
('Rahul Sharma','rahul@example.com','Delhi'),
('Priya Singh','priya@example.com','Bhopal'),
('Arjun Verma','arjun@example.com','Lucknow'),
('Neha Khan','neha@example.com','Kanpur');

INSERT INTO books (title,author,category,price,stock) VALUES
('Clean Code','Robert C. Martin','Programming',650.00,12),
('The Pragmatic Programmer','Andrew Hunt','Programming',720.00,8),
('Atomic Habits','James Clear','Self Help',499.00,20),
('Deep Work','Cal Newport','Productivity',450.00,15),
('The Alchemist','Paulo Coelho','Fiction',350.00,25),
('JavaScript: The Good Parts','Douglas Crockford','Programming',550.00,6);

INSERT INTO orders (customer_id,order_date,status) VALUES
(1,'2026-09-20','Delivered'),
(2,'2026-09-21','Shipped'),
(1,'2026-09-25','Delivered'),
(3,'2026-09-26','Pending'),
(4,'2026-09-28','Delivered'),
(5,'2026-09-29','Cancelled');

INSERT INTO order_items (order_id,book_id,quantity,price) VALUES
(1,1,1,650.00),(1,3,2,499.00),
(2,2,1,720.00),(2,4,1,450.00),
(3,6,1,550.00),(4,5,2,350.00),
(5,1,1,650.00),(5,5,1,350.00),
(6,3,1,499.00);
