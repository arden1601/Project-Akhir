CREATE TABLE customer(
    id SERIAL PRIMARY KEY NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    customer_state VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    telephone VARCHAR(255) NOT NULL
);