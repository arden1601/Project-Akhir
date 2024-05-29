CREATE TABLE book(
    id SERIAL NOT NULL,
    book_name VARCHAR(255) NOT NULL,
    publish_year DATE NOT NULL,
    pages INT NOT NULL,
    author_id INT NOT NULL,
    publisher_id INT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES author(id),
    CONSTRAINT fk_book_publisher FOREIGN KEY (publisher_id) REFERENCES publisher(id) 
);