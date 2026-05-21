CREATE TABLE users_new (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL,
    country VARCHAR(50) NOT NULL,
    password VARCHAR(20) NOT NULL,
    status VARCHAR(20),
    gender VARCHAR(20) NOT NULL
);

INSERT INTO users_new(first_name, last_name, email, role, country, password, status, gender)

VALUES('Divine', 'Ajaegbu', 'divineajaegbu@gmail.com', 'user', 'Nigeria', 'adiva0000', 'inactive', 'female');


INSERT INTO users_new(first_name, last_name, email, role, country, password, status, gender)

VALUES('Loveth', 'Okeke', 'loveth@gmail.com', 'user', 'Nigeria', 'lova0000', 'active', 'female');


INSERT INTO users_new(first_name, last_name, email, role, country, password, status, gender)

VALUES('Chukwu', 'okafor', 'chukwu@gmail.com', 'admin', 'Ghana', 'chukwu0000', 'inactive', 'male');


INSERT INTO users_new(first_name, last_name, email, role, country, password, status, gender)

VALUES('Chinasa', 'Okeke', 'chinasa@gmail.com', 'admin', 'Nigeria', 'chinasa0000', 'inactive', 'female');


INSERT INTO users_new(first_name, last_name, email, role, country, password, status, gender)

VALUES('Happiness', 'Ajaegbu', 'happy@gmail.com', 'user', 'Nigeria', 'happy0000', 'active', 'female');

