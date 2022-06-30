USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS books(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) DEFAULT 'Unknown' NOT NULL,
    date_published DATE,
    description TEXT,
    bestseller_weeks INT UNSIGNED NOT NULL DEFAULT 0
);

# mysql -u codeup_test_user -p < books_migration.sql;