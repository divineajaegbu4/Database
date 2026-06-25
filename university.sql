CREATE TABLE department (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    code VARCHAR(100) NOT NULL
);

CREATE TABLE professor (
    prof_id BIGSERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    department_id BIGINT REFERENCES department(id)
);

CREATE TABLE courses (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0),
    department_id BIGINT REFERENCES department(id),
    professor_id BIGINT REFERENCES professor(prof_id)
);

CREATE TABLE students (
    id BIGSERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    enrollment_Date DATE NOT NULL
);

CREATE TABLE enrollments (
    id BIGSERIAL PRIMARY KEY,
    student_id BIGINT REFERENCES students(id),
    course_id BIGINT REFERENCES courses(id),
    semester VARCHAR(100) NOT NULL,
    grade VARCHAR(2) NOT NULL,
    UNIQUE(student_id, course_id, semester)
);

INSERT INTO department (name, code) VALUES('Computer Science', 'CS');
INSERT INTO department (name, code) VALUES('Mathematics', 'MATH');
INSERT INTO department (name, code) VALUES('Physics', 'PHYS');



INSERT INTO professor (first_name, last_name, email, department_id) VALUES('John', 'Doe', 'john.doe@university.edu', NULL);
INSERT INTO professor (first_name, last_name, email, department_id) VALUES('Jane', 'Smith', 'jane.smith@university.edu', NULL);
INSERT INTO professor (first_name, last_name, email, department_id) VALUES('Bob', 'Johnson', 'bob.johnson@university.edu', 3);
INSERT INTO professor (first_name, last_name, email, department_id) VALUES('Alice', 'Williams', 'alice.williams@university.edu', NULL);
INSERT INTO professor (first_name, last_name, email, department_id) VALUES('Charlie', 'Brown', 'charlie.brown@university.edu', 1);


INSERT INTO courses (title, credits, department_id) VALUES('Computer Science', 3, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Mathematics', 1, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Physics', 2, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Computer Science', 3, 1);
INSERT INTO courses (title, credits, department_id) VALUES('Mathematics', 5, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Physics', 6, 3);
INSERT INTO courses (title, credits, department_id) VALUES('Computer Science', 3, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Mathematics', 2, NULL);
INSERT INTO courses (title, credits, department_id) VALUES('Physics', 6, 3);



INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Alice', 'Johnson', 'alice.johnson@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Bob', 'Smith', 'bob.smith@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Charlie', 'Davis', 'charlie.davis@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Loveth', 'Okeke', 'loveth.lo@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Junior', 'Smith', 'junior.smith@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Loveth', 'Nwafor', 'loveth.nwafor@university.edu', '2023-09-01');
INSERT INTO students(first_name, last_name, email, enrollment_date) VALUES('Jeremiah', 'Johnson', 'jeremiah.johnson@university.edu', '2023-09-01');


INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 2023', 'A'),
(2, 2, 'Fall 2023', 'B'),
(1, 4, 'Fall 2023', 'A');
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(4, 5, 'Fall 2022', 'B'),
(5, 7, 'Fall 2022', 'B'),
(4, 2, 'Fall 2022', 'A');

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(2, 1, 'Fall 2024', 'A'),
(5, 2, 'Fall 2024', 'B'),
(6, 8, 'Fall 2024', 'C');

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 2025', 'A'),
(2, 2, 'Fall 2025', 'B'),
(5, 3, 'Fall 2025', 'A');

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 2026', 'A'),
(2, 2, 'Fall 2026', 'B'),
(3, 3, 'Fall 2026', 'F');

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 2000', 'A'),
(2, 2, 'Fall 2000', 'A'),
(7, 9, 'Fall 2000', 'A');

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES
(1, 1, 'Fall 1996', 'A'),
(2, 2, 'Fall 1996', 'D'),
(5, 8, 'Fall 1996', 'A');


