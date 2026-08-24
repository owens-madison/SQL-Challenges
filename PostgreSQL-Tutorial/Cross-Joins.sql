/* CROSS JOIN: 
    1: General example cross joining 2 tables
*/

/* 1. General example cross joining 2 tables */
SELECT sales_order_id, quantity, product_id
FROM item
CROSS JOIN sales_item
ORDER BY sales_order_id