BEGIN;

-- Insert the purchase record into the `bought` table
INSERT INTO bought (customer_id, book_id, bought_date, price, quantity, store_id)
VALUES (1, 1, CURRENT_DATE, 100000.00, 2, 1);

-- Update the stock quantity in the `stock` table
UPDATE stock
SET quantity = quantity - 2
WHERE book_id = 1 AND store_id = 1;

COMMIT;