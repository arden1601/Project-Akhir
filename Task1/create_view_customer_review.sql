CREATE VIEW customer_reviews AS
SELECT c.id AS Customer_id , c.customer_name, b.book_name, a.author_name, r.review_text, r.rating from customer AS c
JOIN reviews AS r ON c.id = r.customer_id 
JOIN book AS b ON r.book_id = b.id
JOIN author AS a ON b.author_id = a.id
ORDER BY c.id ASC;