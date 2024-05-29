CREATE TABLE book_category(
    id SERIAL PRIMARY KEY NOT NULL,
    category_name VARCHAR(255) NOT NULL
);
CREATE TABLE country(
    id SERIAL PRIMARY KEY NOT NULL,
    country_name VARCHAR(255) NOT NULL
);

CREATE TABLE state(
    id SERIAL PRIMARY KEY NOT NULL,
    state_name VARCHAR(255) NOT NULL,
    country_id INT NOT NULL,
    CONSTRAINT fk_state_country FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE city(
    id SERIAL PRIMARY KEY NOT NULL,
    city_name VARCHAR(255) NOT NULL,
    state_id INT NOT NULL,
    CONSTRAINT fk_city_state FOREIGN KEY (state_id) REFERENCES state(id)
);

CREATE TABLE address(
    id SERIAL PRIMARY KEY NOT NULL,
    street VARCHAR(255) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    city_id INT NOT NULL,
    CONSTRAINT fk_address_city FOREIGN KEY (city_id) REFERENCES city(id)
);

CREATE TABLE store(
    id SERIAL PRIMARY KEY NOT NULL,
    store_name VARCHAR(255) NOT NULL,
    addres_id INT NOT NULL,
    CONSTRAINT fk_store_address FOREIGN KEY (addres_id) REFERENCES address(id)
);

CREATE TABLE employee_job(
    id SERIAL PRIMARY KEY NOT NULL,
    job_name VARCHAR(255) NOT NULL
);

CREATE TABLE employee(
    id SERIAL PRIMARY KEY NOT NULL,
    employee_name VARCHAR(255) NOT NULL,
    position_id INT NOT NULL,
    store_id INT NOT NULL,
    CONSTRAINT fk_employee_store FOREIGN KEY (store_id) REFERENCES store(id),
    CONSTRAINT fk_employee_job FOREIGN KEY (position_id) REFERENCES employee_job(id)
);

CREATE TABLE wishlist(
    id SERIAL PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    CONSTRAINT fk_wishlist_customer FOREIGN KEY (customer_id) REFERENCES customer(id),
    CONSTRAINT fk_wishlist_book FOREIGN KEY (book_id) REFERENCES book(id)
);

CREATE TABLE reviews(
    id SERIAL PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    review_text TEXT NOT NULL,
    rating INT NOT NULL,
    CONSTRAINT fk_reviews_customer FOREIGN KEY (customer_id) REFERENCES customer(id),
    CONSTRAINT fk_reviews_book FOREIGN KEY (book_id) REFERENCES book(id)
);


