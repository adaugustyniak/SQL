/* SELECT */
SELECT name, genre, year
FROM movies;

/* SELECT ALL */
SELECT *
FROM movies;

/* AS */
SELECT imdb_rating
AS 'IMDb'
FROM movies;

/* DISTINCT */
SELECT DISTINCT year
AS 'lata'
FROM movies;

/* WHERE */
SELECT *
FROM movies
WHERE year > 2014;

/* LIKE I */
SELECT *
FROM movies
WHERE name LIKE 'Se_en';

/*** LIKE II ***/
/*A% matches all movies with names that begin with letter ‘A’
%a matches all movies that end with ‘a’
*/
SELECT *
FROM movies 
WHERE name LIKE 'The %';

SELECT * 
FROM movies
WHERE name LIKE '%man%';

/* IS NULL */
SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;

SELECT name
FROM movies 
WHERE imdb_rating IS NULL;

/*** BETWEEN ***/
/* Using the BETWEEN operator, write a query that selects all information about movies whose name begins with the letters ‘D’, ‘E’, and ‘F’.*/
SELECT *
FROM movies
WHERE year BETWEEN 'D' AND 'G';

/* Using the BETWEEN operator, write a new query that selects all information about movies that were released in the 1970’s. */
SELECT * 
FROM movies
WHERE year BETWEEN 1970 AND 1979;

/*** And ***/
/* Now, let’s retrieve every movie released in the 70’s, that’s also well received. */
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

/* Using AND, write a new query that selects all movies made prior to 1985 that are also in the horror genre. */
SELECT *
FROM movies
WHERE year < 1985
AND genre = 'horror';

/*** Or ***/ 
SELECT *
FROM movies
WHERE year > 2014
OR genre = 'action';

/* Using OR, write a query that returns all movies that are either a romance or a comedy. */
SELECT *
FROM movies
WHERE genre = 'comedy'
OR genre = 'romance';

/*** Order By ***/
/* Suppose we want to retrieve the name and year columns of all the movies, ordered by their name alphabetically. */
SELECT name, year
FROM movies
ORDER BY name;

/* Write a new query that retrieves the name, year, and imdb_rating columns of all the movies, ordered highest to lowest by their ratings. */
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

/*** Limit ***/
/* Combining your knowledge of LIMIT and ORDER BY, write a query that returns the top 3 highest rated movies.Select all the columns. */
SELECT * 
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

/*** CASE ***/
/* Select the name column and use a CASE statement to create the second column that is:
‘Chill’ if genre = 'romance'
‘Chill’ if genre = 'comedy'
‘Intense’ in all other cases
Optional: Rename the whole CASE statement to ‘Mood’ using AS. */
SELECT name
CASE 
WHEN genre = 'romance' THEN 'Chill'
WHEN genre = 'comedy' THEN 'Chill'
ELSE 'Intense'
END AS 'Mood'
FROM movies;