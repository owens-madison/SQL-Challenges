/* 
    : Combined Where query (WHERE ... AND)
*/

/* Combined Where query (WHERE ... AND) */
SELECT time_order_taken , cust_id /* column(s) */
FROM sales_order /* table */
WHERE 
    time_order_taken > '2026-08-01' /* condition */
    AND 
    time_order_taken < '2026_08_08'; /* condition */