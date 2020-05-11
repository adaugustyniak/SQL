/* The babies table has the following columns:

name - the name of the baby
year - the year the name was given
gender - the gender of the baby
number - the number of times the name was given */

/* Find the number of girls who were named Lillian for the full span of time of the database.
Select only the year and number columns. */
SELECT year, number
FROM babies
WHERE name = 'Lillian';

/* 
Find 20 distinct names that start with ‘S’.
Select only the name column. 
*/
SELECT DISTINCT name
FROM babies
WHERE name LIKE 'S%'
LIMIT 20;

/* What are the top 10 names in 1880? */
SELECT  name, gender, number
FROM babies
WHERE year = 1880
ORDER BY number DESC
LIMIT 10;