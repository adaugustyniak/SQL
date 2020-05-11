/* Is your name in babies? */
SELECT * 
FROM babies
WHERE name = 'Adrian';
/* How many babies were given your name? */ 18

/* What are the top 5 restaurants in nomnom? */
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 5;

/* What are the top 5 Chinese restaurants? */
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese'
ORDER BY review DESC
LIMIT 5;

/* Which articles are from Wall Street Journal in news? */
SELECT *
FROM news
WHERE publisher = 'Wall Street Journal';

/* Which technology articles are from Wall Street Journal? */
SELECT *
FROM news
WHERE category = 't'
AND publisher = "Wall Street Journal";