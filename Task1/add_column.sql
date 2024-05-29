ALTER TABLE bought
ADD store_id INT NOT NULL,
ADD CONSTRAINT fk_bought_store FOREIGN KEY (store_id) REFERENCES store(id);

ALTER TABLE book
ADD category_id INT NOT NULL,
ADD CONSTRAINT fk_book_category FOREIGN KEY (category_id) REFERENCES book_category(id);