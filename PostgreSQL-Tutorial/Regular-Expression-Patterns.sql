/* 
    '^' : Only display records whose selected column value BEGINS with the given argument
        1: Only display records whose first_name column value begins with 'Ma'
    
    '$' : Only display records whose selected column value ENDS with the given argument
        2: Only display records whose last_name column value ends with 's'
    
    '|' : Only display records whose selected column value ends with any of the given arguemnts
        Note: more than 2 can be passed!
        3: Only display records whose last_name column ends with either 's', 'n', or 'r'

    '[-]' : Only display records whose selected column value contains any of the letters in the given range 
        Note: Just a single value ( [x] ) also works!)
        4: Only display records whose last_name column value contains any of the letters between o-s
*/

/* 1. Only display records whose first_name column value begins with 'Ma' */
SELECT first_name, last_name
FROM customer
WHERE first_name ~ '^Ma'; 

/* 2. Only display records whose last_name column value ends with 's' */
SELECT first_name, last_name
FROM customer
WHERE last_name ~ 's$';

/* 3. Only display records whose last_name column ends with either 's', 'n', or 'r' */
SELECT first_name, last_name
FROM customer
WHERE last_name ~ 's|n|r';

/* 4. Only display records whose last_name column value contains any of the letters between o-s */
SELECT first_name, last_name
FROM customer
WHERE last_name ~ '[o-s]';