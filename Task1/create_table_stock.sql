CREATE TABLE stock(
    id SERIAL PRIMARY KEY NOT NULL,
    book_id INT NOT NULL,
    store_id INT NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT fk_stock_book FOREIGN KEY (book_id) REFERENCES book(id),
    CONSTRAINT fk_stock_store FOREIGN KEY (store_id) REFERENCES store(id)
);