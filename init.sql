DROP DATABASE IF EXISTS test;

CREATE DATABASE test;

CREATE TABLE IF NOT EXISTS test.users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT(2) NOT NULL
);

INSERT INTO test.users (first_name, last_name, age) VALUES
('John', 'Doe', 30),
('Jane', 'Smith', 25),
('Alice', 'Johnson', 28),
('Bob', 'Brown', 35);
