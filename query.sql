DROP TABLE IF EXISTS Persons;
DROP TABLE IF EXISTS Attendance;
-- Create the table to store person details (including attendance column)
CREATE TABLE Persons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    regno VARCHAR(50) NOT NULL UNIQUE,
    attendance INT DEFAULT 0  -- Attendance column with 0 as default (not present)
);

-- Create the table to record attendance
CREATE TABLE IF NOT EXISTS Attendance (
    id SERIAL PRIMARY KEY,
    person_name VARCHAR(100) NOT NULL,
    regno VARCHAR(50) NOT NULL,
    date DATE NOT NULL,  -- Date of attendance
    time TIME NOT NULL   -- Time of attendance
);

-- Insert data into Persons table (example entries)
INSERT INTO Persons (name, regno) VALUES ('keerthana', '119cs22026');
INSERT INTO Persons (name, regno) VALUES ('khushbu', '119cs22061');
INSERT INTO Persons (name, regno) VALUES ('Debaki', '119cs22029');
INSERT INTO Persons (name, regno) VALUES ('yashodha', '119cs22069');

-- Example query to fetch all records from the Persons table
SELECT * FROM Persons;

-- Example query to fetch today's attendance
SELECT * FROM Attendance WHERE date = CURRENT_DATE;
