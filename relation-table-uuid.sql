CREATE TABLE uuid_car (
    id UUID PRIMARY KEY,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL

);

CREATE TABLE uuid_person (
    id UUID PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    car_id UUID REFERENCES uuid_car(id),
    UNIQUE(car_id),
    UNIQUE(email)
);



INSERT INTO uuid_car (id, make, model, price) VALUES (uuid_generate_v4(), 'Toyota', 'Camry', 3423423.24); -- ID 1
INSERT INTO uuid_car (id, make, model, price) VALUES (uuid_generate_v4(), 'Honda', 'Civic', 25000.00);    -- ID 2
INSERT INTO uuid_car (id, make, model, price) VALUES (uuid_generate_v4(), 'Ford', 'Mustang', 45000.00);

INSERT INTO uuid_person (id, first_name, last_name, email, car_id) VALUES (uuid_generate_v4(), 'John', 'Doe', 'john.doe@example.com', uuid_generate_v4());
INSERT INTO uuid_person (id, first_name, last_name, email, car_id) VALUES (uuid_generate_v4(), 'Divine', 'Ajaegbu', 'divineajaegbu@gmail.com', NULL);
INSERT INTO uuid_person (id, first_name, last_name, email, car_id) VALUES (uuid_generate_v4(), 'Loveth', 'Okeke', 'loveth@gmail.com', NULL);

