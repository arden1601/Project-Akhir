CREATE TABLE publisher (
    id SERIAL NOT NULL,
    publisher_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    telephone VARCHAR(255) NOT NULL,
    year_founded INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE author(
    id SERIAL PRIMARY KEY NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    year_born DATE NOT NULL,
    year_died DATE
);

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


CREATE TABLE customer(
    id SERIAL PRIMARY KEY NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    customer_state VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    telephone VARCHAR(255) NOT NULL
);

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