/* Create a table named friends with three columns:
id that stores INTEGER
name that stores TEXT
birthday that stores DATE */

CREATE TABLE friends (
    id INTEGER, 
    name TEXT,
    birthday DATE,
    email TEXT
);

/* Beneath your current code, add Jane Doe to friends.
Her birthday is May 30th, 1990. */

INSERT INTO friends
VALUES (1, Jane Doe, 1990-30-05)

/* Add two of your friends to the table.
Insert an id, name, and birthday for each of them. */

INSERT INTO friends
VALUES (2, Seb, 1993-01-02, seb@codecademy.com);

INSERT INTO friends
VALUES (3, Korys, 1993-08-27, korys@gmail.com);

/* Jane Doe just got married! Her new last name is “Smith”.
Update her record in friends. */

UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;

/* Add a new column named email. */

ALTER TABLE email
ADD email TEXT;

/* Wait, Jane Smith is not a real person.
Remove her from friend */

DELETE FROM friends
WHERE id = 1;

/* Great job! Let’s take a look at the result one last time: */

SELECT * 
FROM friends;