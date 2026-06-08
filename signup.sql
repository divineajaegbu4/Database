CREATE TABLE signup (
    id BIGSERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL
);

INSERT INTO signup (email, password, date_of_birth) VALUES
('johndoe88@gmail.com', '$2b$12$eImiTXTAAm', '1988-04-12'),
('sarah_jenkins@outlook.com', '$2b$12$K9vXzR8pLm', '1995-09-23'),
('m.alves@yahoo.com', '$2b$12$vTz7Y1gWqN', '1991-11-02'),
('chloe.tan@techcorp.io', '$2b$12$bN4mP8sKzX', '2000-01-15'),
('iam_david93@hotmail.com', '$2b$12$qW3vR9tYxM', '1993-07-31');