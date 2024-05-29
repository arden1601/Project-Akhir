CREATE TABLE bought(
    id SERIAL PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    bought_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT fk_bought_customer FOREIGN KEY (customer_id) REFERENCES customer(id),
    CONSTRAINT fk_bought_book FOREIGN KEY (book_id) REFERENCES book(id)
);