CREATE DATABASE food;

\c food

CREATE TABLE fruits (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    color VARCHAR(100),
    amount INT
);
