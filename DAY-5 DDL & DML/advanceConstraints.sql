-- PLANE FLIGHT TABLE (Constraints Demo)

-- Drop table if it already exists
DROP TABLE IF EXISTS gfg.flights;

-- Create flights table
CREATE TABLE IF NOT EXISTS gfg.flights (
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,   -- DEFAULT
    flight_id INT PRIMARY KEY,                        -- PRIMARY KEY
    flight_name VARCHAR(255) NOT NULL,                -- NOT NULL
    flight_code VARCHAR(20) NOT NULL UNIQUE,          -- UNIQUE
    capacity INT CHECK (capacity >= 50),              -- CHECK
    source_city VARCHAR(255),
    destination_city VARCHAR(255),
    is_active BOOLEAN DEFAULT true,                   -- DEFAULT
    CONSTRAINT ck_valid_city 
        CHECK (source_city IN ('Delhi','Mumbai','Pune','Bangalore','Chennai')
           AND destination_city IN ('Delhi','Mumbai','Pune','Bangalore','Chennai'))
);

-- Insert sample data
INSERT INTO gfg.flights
(flight_id, flight_name, flight_code, capacity, source_city, destination_city, is_active, created_at)
VALUES
(2001, 'IndiGo Airlines', '6E101', 180, 'Pune', 'Delhi', true, CURRENT_TIMESTAMP),
(2002, 'Air India', 'AI202', 220, 'Mumbai', 'Chennai', true, CURRENT_TIMESTAMP),
(2003, 'Vistara', 'UK303', 160, 'Bangalore', 'Delhi', true, CURRENT_TIMESTAMP);

-- View data
SELECT * FROM gfg.flights;