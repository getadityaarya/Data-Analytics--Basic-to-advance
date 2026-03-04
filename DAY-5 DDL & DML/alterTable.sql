
-- Create a database if not exist
Create database if not exists Practice;

-- Use the Database
Use Practice;

-- Create a Table

CREATE TABLE IF NOT EXISTS Practice.Student (
    user_id INT,
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
    
SELECT * FROM Student;

-- Adding New Columns
ALTER TABLE Practice.Student 
ADD COLUMN phone_number VARCHAR(15);
SELECT * FROM Practice.Student ;

 -- Modify Existing Constraints
ALTER TABLE Practice.Student 
MODIFY COLUMN email VARCHAR(255) UNIQUE;
SELECT * FROM Practice.Student ;

-- Change column name
ALTER TABLE Practice.Student 
CHANGE COLUMN age user_age INT;
SELECT * FROM Practice.Student ;

-- Set Default Value
ALTER TABLE Practice.Student 
ALTER COLUMN user_age SET DEFAULT 18;
SELECT * FROM Practice.Student ;

-- DROP Column
ALTER TABLE Practice.Student 
DROP COLUMN phone_number;
SELECT * FROM Practice.Student;