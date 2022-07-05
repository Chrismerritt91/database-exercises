# use codeup_test_db;

# ALTER table albums
# ADD UNIQUE (artist,name);

# describe albums;

# INSERT albums(artist, name, release_date, genre, sales)
# VALUES ('Michael Jackson', 'Thriller', 1982, 'Pop / Rock / R & B', 47.3);

# CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

# TRUNCATE TABLE users;

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('sam', 'sam@example.com', 2),
       ('eric', 'eric@example.com', 2),
       ('steve', 'steve@example.com', null),
       ('julio', 'julio@example.com', 2);

# join in
SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# join left
SELECT users.name as user_name, roles.name as role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# join right
SELECT users.name as user_name, roles.name as role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# count how many people are in each role
SELECT roles.name as role, count(users.role_id) as personel
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;



