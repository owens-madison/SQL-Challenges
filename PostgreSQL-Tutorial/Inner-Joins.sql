/*  INNER JOIN: Only display the rows from both tables that share the same value at a specified column
    1: General example
    2: General example with a 2nd filter (> operator)
    3: Example NOT using an inner join, but rather a WHERE clause (NOT considered best practice)
*/

/* 1. General example */
SELECT item_id, price
FROM item
INNER JOIN sales_item
ON item.id = sales_item.id

/* 2. General example with a 2nd filter (> operator) */
SELECT item_id, price
FROM item
INNER JOIN sales_item
ON item.id = sales_item.id
AND price > 50

/* 3. Example NOT using an inner join, but rather a WHERE clause (NOT considered best practice) */
SELECT item_id, price
FROM item, sales_item
WHERE item.id = sales_item.item_id
AND price > 50.50
ORDER BY item_id;