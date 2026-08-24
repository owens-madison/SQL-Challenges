/* LEFT JOIN: 
    Note: it is common practice to avoid right joins
    1: General example left joining 2 tables
*/

/* 1. General example left joining 2 tables */
SELECT name, supplier, price
FROM product
LEFT JOIN item
ON product.id = item.product_id;