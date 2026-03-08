-- DDL COMMANDS DEMO ON ONE TABLE (FLIGHT)
use practice;

-- CREATE TABLE
CREATE TABLE if not exists Flight(
    flight_id INT PRIMARY KEY,
    flight_name VARCHAR(50) NOT NULL,
    flight_code VARCHAR(10) UNIQUE,
    capacity INT CHECK (capacity > 0),
    status VARCHAR(20) DEFAULT 'Scheduled'
);

-- Insert sample data
INSERT INTO Flight VALUES
(1, 'IndiGo', '6E101', 180, 'Scheduled'),
(2, 'Air India', 'AI202', 220, 'Scheduled');

-- TRUNCATE: Deletes ALL records but keeps structure
-- TRUNCATE TABLE Flight;

-- RENAME: Renames the table
-- RENAME TABLE Flight TO Plane_Flight;


-- COMMENT: Adds description to table/column
COMMENT ON TABLE Flight IS 'Stores plane flight details';
COMMENT ON COLUMN Flight.flight_code IS 'Unique flight code';

-- INDEX: Improves search performance
CREATE INDEX idx_flight_code ON Flight(flight_code);


-- VIEW: Virtual table based on SELECT
CREATE VIEW Active_Flights AS
SELECT flight_id, flight_name, flight_code
FROM Flight
WHERE status = 'Scheduled';

-- View data from VIEW
SELECT * FROM Active_Flights;

-- DROP: Deletes table permanently
-- DROP TABLE Flight;