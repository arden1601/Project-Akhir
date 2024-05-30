CREATE VIEW customer_buying AS
SELECT c.id AS Customer_id , c.customer_name, b.book_name, a.author_name, bg.bought_date, bg.price, s.store_name from customer AS c
JOIN bought AS bg ON c.id = bg.id
JOIN book AS b ON bg.book_id = b.id
JOIN author AS a ON b.author_id = a.id
JOIN store AS s ON bg.store_id = s.id
ORDER BY c.id ASC;