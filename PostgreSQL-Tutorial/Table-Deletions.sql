/*
    1: Delete a column from a table
    2: Delete all the records from a table, but keeps the empty table
    3: Deletes a table, and therefore all of its records / data
*/

/* 1. Delete a column in a pre-existing table */
ALTER TABLE sales_item
DROP COLUMN weekday;

/* 2. Delete all the records from a table, but keeps the empty table */
TRUNCATE TABLE transaction;

/* 3. Deletes a table, and therefore all of its records / data */
DROP TABLE transaction;
