CREATE SCHEMA kavinoq;

CREATE TYPE GENDER_STATUS AS ENUM('female', 'male');

CREATE TABLE IF NOT EXISTS kavinoq.users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    gender GENDER_STATUS NOT NULL DEFAULT 'male'
);

CREATE TABLE IF NOT EXISTS Kavinoq.todos (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    is_completed BOOLEAN NOT NULL DEFAULT FALSE,

    FOREIGN KEY (user_id) REFERENCES kavinoq.users(id) ON DELETE CASCADE
);

--- Populate the users table with sample data----
INSERT INTO kavinoq.users (username, gender) VALUES('john_doe', 'male');
INSERT INTO kavinoq.users (username, gender) VALUES('jane_smith', 'female');
INSERT INTO kavinoq.users (username, gender) VALUES('bob_johnson', 'male');
INSERT INTO kavinoq.users (username, gender) VALUES('alice_williams', 'female');
INSERT INTO kavinoq.users (username, gender) VALUES('charlie_brown', 'male');

--- Populate the todos table with sample data ----
INSERT INTO kavinoq.todos (title, user_id, description, is_completed) VALUES('Javascript', 2, 'Covers Javascript fundamentals', true);
INSERT INTO kavinoq.todos (title, user_id, description, is_completed) VALUES('Express', 4, 'Express is a framework of NodeJS', true);
INSERT INTO kavinoq.todos (title, user_id, description, is_completed) VALUES('Obi is a girl', 4, 'I think it is not true', false);
INSERT INTO kavinoq.todos (title, user_id, description, is_completed) VALUES('Tomorrow is school', 1, 'Tomorrow is Saturday', false);
INSERT INTO kavinoq.todos (title, user_id, description, is_completed) VALUES('Surds', 1, 'Covers Surds topic', true);