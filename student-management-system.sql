CREATE SCHEMA student_management_system;

CREATE TABLE student_management_system.students (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    date_of_birth DATE NOT NULL
);

------------ DEPARTMENT TABLE ------------------
CREATE TABLE student_management_system.departments (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

--------------- COURSES TABLE ----------------
CREATE TABLE student_management_system.courses (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    department_id BIGINT REFERENCES student_management_system.departments(id)
);

----------------- LECTURERS TABLE -----------------
CREATE TABLE student_management_system.lecturers (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    department_id BIGINT REFERENCES student_management_system.departments(id)
);

------------------- ENROLLMENTS TABLE -------------------
CREATE TABLE student_management_system.enrollments (
    id BIGSERIAL PRIMARY KEY,
    student_id BIGINT REFERENCES student_management_system.students(id),
    course_id BIGINT REFERENCES student_management_system.courses(id),
    semester VARCHAR(20) NOT NULL,
    grade VARCHAR(2) NOT NULL
);

------------------------ COURSE LECTURER RELATIONSHIP TABLE ------------------------
CREATE TABLE student_management_system.course_lecturers (
    course_id BIGINT REFERENCES student_management_system.courses(id),
    lecturer_id BIGINT REFERENCES student_management_system.lecturers(id)
);


------------------------ INSERTING DATA INTO THE TABLES ------------------------

------------------------------------------------------------------------------------

---------------------- INSERTING DATA INTO STUDENTS TABLE -----------------------
INSERT INTO student_management_system.students (first_name, last_name, email, date_of_birth)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2000-01-01'),
    ('Jane', 'Smith', 'jane.smith@example.com', '2000-02-02');


INSERT INTO student_management_system.students
(first_name, last_name, email, date_of_birth)
VALUES
('David', 'Wilson', 'david.wilson@example.com', '2000-05-10'),
('Ava', 'White', 'ava.white@example.com', '2001-12-08');

INSERT INTO student_management_system.students
(first_name, last_name, email, date_of_birth)
VALUES
('Sophia', 'Thomas', 'sophia.thomas@example.com', '2002-10-05'),
('Matthew', 'Jackson', 'matthew.jackson@example.com', '1999-11-22');

INSERT INTO student_management_system.students
(first_name, last_name, email, date_of_birth)
VALUES
('Olivia', 'Taylor', 'olivia.taylor@example.com', '2001-08-12'),
('Daniel', 'Anderson', 'daniel.anderson@example.com', '2000-09-18');



------------------------ INSERTING DATA INTO DEPARTMENTS TABLE -----------------------
INSERT INTO student_management_system.departments (name)
VALUES ('Computer Science');

INSERT INTO student_management_system.departments (name)
VALUES ('Mathematics');

INSERT INTO student_management_system.departments (name)
VALUES ('Physics');

INSERT INTO student_management_system.departments (name)
VALUES ('Chemistry');

INSERT INTO student_management_system.departments (name)
VALUES ('Economics');

INSERT INTO student_management_system.departments (name)
VALUES ('Accounting');

INSERT INTO student_management_system.departments (name)
VALUES ('Electrical Engineering');

INSERT INTO student_management_system.departments (name)
VALUES ('Cybersecurity');


------------------------------- INSERTING DATA INTO COURSES TABLE -----------------------
INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Database Systems', 1);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Calculus I', 1);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Quantum Mechanics', 1);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Organic Chemistry', 2);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Genetics', 2);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Microeconomics', 4);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Financial Accounting', 7);

INSERT INTO student_management_system.courses (name, department_id)
VALUES ('Circuit Analysis', 8);


---------------------------- INSERTING DATA INTO LECTURERS TABLE -----------------------
INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Michael', 'Adams', 'michael.adams@example.com', 1);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Sarah', 'Johnson', 'sarah.johnson@example.com', 1);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('David', 'Brown', 'david.brown@example.com', 2);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Emily', 'Wilson', 'emily.wilson@example.com', 4);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('James', 'Taylor', 'james.taylor@example.com', 3);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Olivia', 'Thomas', 'olivia.thomas@example.com', 6);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Daniel', 'Anderson', 'daniel.anderson@example.com', 5);

INSERT INTO student_management_system.lecturers
(first_name, last_name, email, department_id)
VALUES
('Sophia', 'Martins', 'sophia.martins@example.com', 8);


-------------------------------- INSERTING DATA INTO ENROLLMENTS TABLE -----------------------
INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(1, 1, 'Fall 2025', 'A');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(2, 2, 'Fall 2025', 'B');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(3, 3, 'Fall 2025', 'A');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(4, 4, 'Fall 2025', 'C');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(5, 5, 'Fall 2025', 'B');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(6, 6, 'Fall 2025', 'A');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(7, 7, 'Fall 2025', 'B');

INSERT INTO student_management_system.enrollments
(student_id, course_id, semester, grade)
VALUES
(8, 8, 'Fall 2025', 'A');

------------------------------ INSERTING DATA INTO COURSE_LECTURERS TABLE -------------------------
INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(1, 1);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(2, 2);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(3, 3);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(4, 4);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(5, 5);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(6, 6);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(7, 7);

INSERT INTO student_management_system.course_lecturers
(course_id, lecturer_id)
VALUES
(8, 8);

