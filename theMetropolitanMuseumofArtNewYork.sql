/* The Metropolitan Museum of Art of New York is one of the world’s largest and finest art museums.
In this project, you will be working with a table named met that contains the museum’s collection of American Decorative Arts.
It has the following columns:

id - the title of the art piece
department - the department of the art piece
category - the category of the art piece
title - the title name of the art piece
artist - the name of the artist
date - the date(s) of the art piece
medium - the medium of the art piece
country - the country of the artist */

 SELECT * 
 FROM met
 LIMIT 10;

 
/* How many pieces are in the American Decorative Art collection? */

 SELECT COUNT(*)
 FROM met;

/* Celery was considered a luxurious snack in the Victorian era (around the 1800s). Wealthy families served stalks of it in intricate glass vases.
Don’t believe it? Count the number of pieces where the category includes ‘celery’. */

 SELECT COUNT(*)
 FROM met
 WHERE category LIKE '%celery%';

 /* Find the title and medium of the oldest piece(s) in the collection. */

 SELECT date, title, medium 
 FROM met
 WHERE date LIKE '%1600%';

/*  Not every American decoration is from the Americas… where are they are coming from?
Find the top 10 countries with the most pieces in the collection. */

SELECT country, COUNT(*)
FROM met
GROUP BY country
ORDER BY COUNT(*) DESC
LIMIT 10;


/* There are all kinds of American decorative art in the Met’s collection.
Find the categories HAVING more than 100 pieces. */

 SELECT category, COUNT(*)
 FROM met
 GROUP BY category
 HAVING COUNT(*) > 100;

/* Count the number of pieces where the medium contains ‘gold’ or ‘silver’.
And sort in descending order. */

SELECT medium, COUNT(*)
FROM met
  WHERE medium LIKE '%gold%' 
     OR medium LIKE '%silver%'
ORDER BY 1
ORDER BY 2 DESC;

/* If we want to be more accurate, we can use a CASE statement: */

SELECT CASE
   WHEN medium LIKE '%gold%'   THEN 'Gold'
   WHEN medium LIKE '%silver%' THEN 'Silver'
   ELSE NULL
  END AS 'Bling',
  COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;