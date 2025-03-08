-- I'm going to use postgresSQL in this project, but is you can use other
-- If you want to code in vscode you need to install the extension SQLTools and connect
-- Connect
-- Put "DROP TABLE" in the begining
DROP TABLE users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT,
    cration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Put some elements in the table
INSERT INTO users (user_name, email, age) 
VALUES
    ('Tom', 'Tom@email.com', 27),
    ('Gus', 'Gus@email.com', 19),
    ('Alex', 'Alex@email.com', 31),
    ('Joe', 'Joe@email.com', 33);
-- Now select them using "SELECT" and select all using "*"
SELECT * FROM users
-- Drop the table in the final line
DROP TABLE users
