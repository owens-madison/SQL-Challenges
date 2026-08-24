/*
    1: Ordering query results 
    2: Limiting the amount of query results
*/

/* 1. Ordering query results  */
SELECT * /* column(s) */
FROM sales_item /* table */
WHERE discount > .15 /* condition */
ORDER BY discount ; /* Can specify ASC (default) or DESC order */

/* 2. Limiting query results (the top / first / last / etc 'n' results ) */
SELECT * /* column(s) */
FROM sales_item /* table */
WHERE discount > .15 /* condition */
ORDER BY discount DESC /* Can specify ASC (default) or DESC order */
LIMIT 2; /* the max amount of record to return */