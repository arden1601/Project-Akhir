CREATE TABLE author(
    id SERIAL PRIMARY KEY NOT NULL,
    author_name VARCHAR(255) NOT NULL,
    year_born DATE NOT NULL,
    year_died DATE
);