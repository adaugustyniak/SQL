SELECT *
FROM transaction_data
LIMIT 10;

/* Column names are: 
id	
full_name	
email	
zip	
ip_address */

/* The finance department noted that some of the fraudulent transactions were recorded as coming from Smokey Bear’s zip code (20252).
You agree this is suspicious, it’s unlikely that the fire prevention mascot is using Reputable Company’s services.
Find the full_names and emails of the transactions listing 20252 as the zip code. */

SELECT full_name, email, zip
FROM transaction_data
WHERE zip = 20252;


/* Finance has also noticed a number of pseudonyms associated with fraudulent transactions.
The fraudsters thought it would be funny to use ‘Art Vandelay’ for their full name or add a ‘der’ for their middle name.
Use a query to find the names and emails associated with these transactions. */

SELECT full_name, email
FROM transaction_data
WHERE full_name = 'Art Vandelay' 
   OR full_name LIKE % der %;

   
/* There are some irregularities in the IP addresses where transactions are originating from.
For example, any IP address beginning with ‘10.’ is reserved for internal use.
We shouldn’t see IP addresses like this accessing Reputable Company’s service.
Find the ip_addresses and emails listed with these transactions. */

SELECT ip_address, email
FROM transaction_data
WHERE ip_address LIKE '10.%';

/* Users are making fraudulent transactions using a temporary email address service. 
These services provide a short-lived email that can be verified and then self-destructs.
Find the emails in transaction_data with ‘temp_email.com’ as a domain. */

SELECT email
FROM transaction_data
WHERE email LIKE '%temp_email.com';

/* The finance department is looking for a specific transaction. 
They know that the transaction occurred from an ip address starting with ‘120.’ and their full name starts with ‘John’.
Can you find the transaction? */

SELECT *
FROM transaction_data
WHERE ip_address LIKE '120.%'
AND full_name LIKE 'John%';
