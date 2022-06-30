USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt.Peppers Lonely Hearts Club Band';

SELECT genre FROM albums Where name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT * FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre = 'Rock';



