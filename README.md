# 📚 Online Bookstore SQL Database

A small MySQL project demonstrating relational database design and practical SQL queries for an online bookstore.

## What it demonstrates

- Database and table creation
- Primary and foreign keys
- One-to-many relationships
- INSERT and SELECT
- WHERE and ORDER BY
- INNER JOIN and LEFT JOIN
- SUM, COUNT and AVG
- GROUP BY and HAVING
- Inventory and sales analysis

## Database Structure

```text
customers
    |
    +----< orders
               |
               +----< order_items >---- books
```

### Tables
- `customers` — customer information
- `books` — book catalog and stock
- `orders` — customer orders
- `order_items` — books included in each order

## How to Run

1. Install MySQL 8+ / MySQL Workbench.
2. Run `schema.sql`.
3. Run `data.sql`.
4. Open and execute queries from `queries.sql`.

## Example Analysis

The queries answer questions such as:
- Which books are in the Programming category?
- What is the value of each order?
- How much has each customer spent?
- Which books sell the most?
- Which books have low stock?
- Which customer has spent the most?

## Tech
MySQL 8+ • SQL • MySQL Workbench

## Author
**Aman Ali** — https://github.com/AmaanAli7
