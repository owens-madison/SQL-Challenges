/*
    1: Concatenating 2 columns into 1
    2: Sum of of a given column for records that fit, and therefore are grouped by, a certain criteria
*/

/* 1. Concating columns */
SELECT 
	CONCAT(first_name, ' ', last_name ) AS full_name, /* columns to combine, and the name of the generated column. without specifying the name, it will just be titled 'concat'*/
	phone, state
FROM customer /* table */
WHERE STATE = 'OH'; /* condition */

/* 2. Sum of of a given column for records that fit, and therefore are grouped by, a certain criteria */
SELECT 
	product_id,
	SUM(price) AS total /* column to sum the record values of, and the name of the generated column. without specifying the name, it will just be titled 'sum'*/
FROM item /* table */
WHERE product_id = 10 /* condition */
GROUP BY product_id;