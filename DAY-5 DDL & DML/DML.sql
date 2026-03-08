-- DML COMMANDS (SIMPLE + COMPLETE FLOW)
use practice;

CREATE TABLE if not exists Flight (
    flight_id INT PRIMARY KEY,
    flight_name VARCHAR(50) NOT NULL,
    flight_code VARCHAR(10) UNIQUE,
    capacity INT CHECK (capacity > 0),
    status VARCHAR(20) DEFAULT 'Scheduled'
);

-- INSERT → Used to ADD new records (rows) into a table
INSERT INTO Flight (flight_id, flight_name, flight_code, capacity, status)
VALUES (3, 'Vistara', 'UK303', 160, 'Scheduled');

-- SELECT → Used to READ or VIEW data from a table without changing it
SELECT * FROM Flight;

-- UPDATE → Used to MODIFY existing data in a table based on a condition
UPDATE Flight
SET status = 'Delayed'
WHERE flight_id = 3;

-- DELETE → Used to REMOVE specific records from a table based on a condition
DELETE FROM Flight
WHERE flight_id = 3;