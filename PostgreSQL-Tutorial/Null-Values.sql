/*
    1: Only display records that have a null value at a given column
    2: Only display records that do NOT have a null value at a given column
        Note: (!=, and <> do not work; must use 'IS NOT')
*/

/* 1. Only display records that have a null value at a given column */
SELECT product_id, price
FROM item
WHERE price = NULL;

/* 2. Only display records that do NOT have a null value at a given column */
SELECT product_id, price
FROM item
WHERE price IS NOT NULL;