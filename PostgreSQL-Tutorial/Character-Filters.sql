/*
    SIMILAR TO + '%': Only display records whose values of a column start with a certain character
        1: Only display records whose first name begins with an M
    
    SIMILAR TO + '%' + OR + '%': Only display records whose values correspont to at least one of the characters specified for each column
        2: Only display records whose first name begins with 'N' and / or last name begins with 'O'
    
    LIKE + '____': Only displays records whose values for a given column (begin with a certain character(s) and) are a certain length
        3: Only display records whose 'first_name' column value are 7 characters and begin with 'M'

*/

/* 1. General example only displaying records whose first name begins with an M */
SELECT first_name, last_name
FROM customer
WHERE first_name SIMILAR TO 'M%';

/* 2. Only display records whose first name begins with 'N' and / or last name begins with 'O' */
SELECT first_name, last_name
FROM customer
WHERE 
	first_name SIMILAR TO 'N%' 
	OR 
	last_name SIMILAR TO 'O%'
;

/* 3. Only display records whose 'first_name' column value are 7 characters and begin with 'M' */
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'M______';