CREATE VIEW book_stock AS
SELECT b.book_name, s.store_name, st.quantity FROM book AS b
JOIN stock AS st ON b.id = st.book_id
JOIN store AS s ON st.store_id = s.id;