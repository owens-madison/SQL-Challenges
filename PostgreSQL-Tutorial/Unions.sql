/* UNION: Combines the results of 2/+ select statements into 1 table with communal columns, 
    but each result MUST return the same number of results 
    AND each column must have the same data type.

    1: Example with optional WHERE clause
*/

/* 1. Example with optional WHERE clause */
	SELECT first_name, last_name, street, city, zip, birth_date
	FROM customer
	WHERE EXTRACT(MONTH FROM birth_date) = 12 /* optional where filter */
UNION
	SELECT first_name, last_name, street, city, zip, birth_date
	FROM sales_person
	WHERE EXTRACT(MONTH FROM birth_date) = 12
ORDER BY birth_date;