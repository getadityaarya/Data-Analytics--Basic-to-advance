-- SQL CONSTRAINTS
-- CONSTRAINTS are rules applied on table columns to ensure only valid and meaningful data is stored.

-- NOT NULL → Ensures a column must always have a value and cannot be left empty.
-- Example use: name VARCHAR(50) NOT NULL

-- UNIQUE → Ensures all values in a column are different to avoid duplicate data.
-- Example use: email VARCHAR(100) UNIQUE

-- PRIMARY KEY → Uniquely identifies each row in a table and does not allow NULL or duplicate values.
-- Example use: student_id INT PRIMARY KEY

-- FOREIGN KEY → Creates a relationship between two tables and ensures referenced data exists.
-- Example use: FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)

-- CHECK → Ensures that data entered into a column satisfies a specific condition.
-- Example use: age INT CHECK (age >= 5)

-- DEFAULT → Automatically assigns a value to a column when no value is provided.
-- Example use: city VARCHAR(50) DEFAULT 'Pune'

-- ======================================
-- TABLE USING ALL CONSTRAINTS
-- ======================================

CREATE TABLE Demo_Student (
    student_id INT PRIMARY KEY,           -- Uniquely identifies each student
    name VARCHAR(50) NOT NULL,             -- Name must be provided
    email VARCHAR(100) UNIQUE,              -- Email must be unique
    age INT CHECK (age >= 5),               -- Age must be 5 or above
    city VARCHAR(50) DEFAULT 'Pune'         -- Default city is Pune
);

-- VALID INSERT → Follows all constraint rules and will be successfully inserted.
INSERT INTO Demo_Student (student_id, name, email, age)
VALUES (1, 'Amit', 'amit@example.com', 20);

-- INVALID INSERT → Violates NOT NULL constraint because name is missing.
-- INSERT INTO Demo_Student VALUES (2, NULL, 'user2@example.com', 22, 'Mumbai');