/* The nomnom table has the following columns:

name - the restaurant name
neighborhood - the neighborhood name
cuisine - the cuisine type
review - the average user review
price - the price range
health - the health inspection grade */

/* 
Suppose your friend Jaime wants to go out to Japanese, but you’re on a budget.
Return all the restaurants that are Japanese and $$.
Select all the columns. */
SELECT *
FROM nomnom
WHERE cuisine = 'Japanese' 
AND price = '$$';

/* Your roommate Bevers can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘noodle’ in it. */
SELECT *
FROM nomnom
WHERE name LIKE '%noodle%';

/* Some of the restaurants have not been inspected yet or are currently appealing their health grade score. Find the restaurants that have empty health values.
Select all the columns. */
SELECT *
FROM nomnom
WHERE health IS NULL;