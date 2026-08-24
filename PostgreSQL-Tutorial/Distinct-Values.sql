/* DISTINCT: Eliminates duplicates 
    1: General example
    2: Example with NOT EQUAL TO (!=) operator
        2.1: (!=) operator
        2.2: (<>) operator
    3: Example with IN operator (only include records matching specified values for a given column)
*/

/* 1. General example */
SELECT DISTINCT city /* row(s) where you only want to avoid repeated values) */ 
FROM customer
ORDER BY city; /* completely optional */

/* 2.1. Example with NOT EQUAL TO (!=) operator  */
SELECT DISTINCT city /* row(s) where you only want to avoid repeated values) */ 
FROM customer
WHERE city != 'Toledo' /* filter out records with this specific column value */
ORDER BY city; /* completely optional */

/* 2.2. Example with NOT EQUAL TO (<>) operator */
SELECT DISTINCT city /* row(s) where you only want to avoid repeated values) */ 
FROM customer
WHERE city <> 'Toledo' /* filter out records with this specific column value */
ORDER BY city; /* completely optional */

/* 3. Example with IN operator (only include records matching specified values for a given column) */
SELECT DISTINCT city /* row(s) where you only want to avoid repeated values) */ 
FROM customer
WHERE city IN ('Cleveland', 'Columbus', 'Cincinnati') 
/* only include records with these specific column values */
ORDER BY city; /* completely optional */