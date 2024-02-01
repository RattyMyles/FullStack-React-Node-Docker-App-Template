-- Check if the database exists
CREATE DATABASE IF NOT EXISTS games;
USE games;

-- Check if the table exists
CREATE TABLE IF NOT EXISTS games (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(200)
);

-- Inserting sample data into the games table
INSERT INTO games (name, description) VALUES
    ('Game 1', 'Description for Game 1'),
    ('Game 2', 'Description for Game 2'),
    ('Game 3', 'Description for Game 3');

CREATE USER IF NOT EXISTS 'app_user'@'%' IDENTIFIED BY 'Password123!';
GRANT ALL PRIVILEGES ON games.* TO 'app_user'@'%';
FLUSH PRIVILEGES;
