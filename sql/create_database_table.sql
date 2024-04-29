CREATE SCHEMA cx;
CREATE TABLE cx.customer (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(200),
    ssn VARCHAR(20),
    notes TEXT
);
