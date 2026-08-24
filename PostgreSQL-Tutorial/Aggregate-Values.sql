/* Aggregate Values
	SUM:    Displays the sum of all the values for a given column in a table 
	COUNT:  Displays the amount of records for a given query
	AVG:    Averages the sum of all the values for a given column by the amount of records
	ROUND:  Rounds a value to fit a specified decimal value
	MIN:    Returns the lowest value for a given column
	MAX:    Returns the highest value for a given column

    1: Display the sum of all the values within the price column

    2: For each birth month, display the amount of customers that have that same birth month
        Uses: GROUP BY, COUNT, EXTRACT
    
    3: Only display each birth month and the amount of customers that share that birth month if it's more than 2 customers
        Uses: GROUP BY, COUNT, HAVING, EXTRACT
    
    4: For the item table, display 
        the total amount of records in the table (Count(*) with no filter), 
        the sum of all the values in the 'price' column,
        the average price of all the values in the 'price' column, rounded to 2 decimal places,
        the minimum value found within the 'price' column, and 
        the maximum value found within the 'price' column
*/

/* 1. Display the sum of all the values within the price column*/
SELECT SUM(price)
from item;

/* 2. For each birth month, display the amount of customers that have that same birth month */
SELECT 
	EXTRACT(MONTH FROM birth_date) AS month, 
	COUNT(*) AS amount
FROM customer
GROUP BY month
ORDER BY month;

/* 3. Only display each birth month and the amount of customers that share that birth month if it's more than 2 customers */
SELECT 
	EXTRACT(MONTH FROM birth_date) AS month, 
	COUNT(*) AS amount
FROM customer
GROUP BY month
HAVING COUNT(*) > 2
ORDER BY month;

/* 4. For the item table, display 
        the total amount of records in the table (Count(*) with no filter), 
        the sum of all the values in the 'price' column,
        the average price of all the values in the 'price' column, rounded to 2 decimal places,
        the minimum value found within the 'price' column, and 
        the maximum value found within the 'price' column
*/
SELECT 
	COUNT(*) AS items,
	SUM(price) as value,
	ROUND(AVG(price), 2) AS average,
	MIN(price) as minimum,
	MAX(price) as maximum
from item;