-- Create a simple table and add some informations
DROP TABLE users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    cration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (user_name, email, age) 
VALUES
    ('Tom', 'Tom@email.com', 27),
    ('Gus', 'Gus@email.com', 19),
    ('Alex', 'Alex@email.com', 31),
    ('Joe', 'Joe@email.com', 33);
-- Now do a "Select" but telling what and where you want to select
SELECT user_name FROM users

