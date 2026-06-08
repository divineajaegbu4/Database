CREATE TABLE car (
    id BIGSERIAL PRIMARY KEY,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL

);

CREATE TABLE person (
    id BIGSERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    car_id BIGINT REFERENCES car(id),
    UNIQUE(car_id)
);



INSERT INTO car (make, model, price) VALUES ('Toyota', 'Camry', 3423423.24); -- ID 1
INSERT INTO car (make, model, price) VALUES ('Honda', 'Civic', 25000.00);    -- ID 2
INSERT INTO car (make, model, price) VALUES ('Ford', 'Mustang', 45000.00);

INSERT INTO person (first_name, last_name, email, car_id) VALUES('John', 'Doe', 'john.doe@example.com', 3);

INSERT INTO person(first_name, last_name, email, car_id) VALUES('Divine', 'Ajaegbu', 'divineajaegbu@gmail.com', NULL);


INSERT INTO person(first_name, last_name, email, car_id) VALUES('Loveth', 'Okeke', 'loveth@gmail.com', 1);

