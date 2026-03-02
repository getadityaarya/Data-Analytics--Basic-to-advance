-- Create a database if not exist
Create database if not exists Practice;

-- Use the Database
Use Practice;

-- Create a Table

CREATE TABLE IF NOT EXISTS Practice.Student (
    user_id INT primary key,
    username VARCHAR(255),
    email VARCHAR(255),
    age INT,
    city VARCHAR(255));
    

INSERT INTO Student (user_id, username, email, age, city) VALUES
    (1, 'user1', 'user1@example.com', 25, 'City1'),
    (2, 'user2', 'user2@example.com', 30, 'City2'),
    (3, 'user3', 'user3@example.com', 22, 'City3'),
    (4, 'user4', 'user4@example.com', 28, 'City4'),
    (5, 'user5', 'user5@example.com', 35, 'City5');

CREATE TABLE if not exists Teacher(
teacher_id int Primary key,
name varchar(40),
subject varchar(40),
sex varchar(10),
salary float);

INSERT INTO Teacher VALUES
(102, 'Sunita Sharma', 'Physics', 'Female', 52000),
(103, 'Anil Deshmukh', 'Chemistry', 'Male', 48000),
(104, 'Pooja Kulkarni', 'Biology', 'Female', 50000),
(105, 'Mahesh Pawar', 'Computer Science', 'Male', 60000);

SELECT * FROM Student;
SELECT * FROM Teacher;
