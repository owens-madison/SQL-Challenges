/*
    1: Alter a column's data type (to an enum)
        1.1: Alter a column's data type (to an enum)
        1.2: Alter a column's data type (to a built-in type)
    2: Add a column to a pre-existing table
    3: Set a column in a pre-existing table to not null
    4: Rename a column in a pre-existing table
    5: Delete a column in a pre-existing table
    6: Rename a pre-existing table
*/

/* 1.1. Alter a column's data type (to an enum) */
ALTER TABLE customer
ALTER COLUMN gender
TYPE gender_type
USING gender::gender_type;

/* 1.2.a. Alter a column's data type (to a built-in type) */
ALTER TABLE customer
ALTER COLUMN zip
TYPE INT;

/* 1.2.b. Alter a column's data type (to a built-in type) */
ALTER TABLE sales_order
ALTER COLUMN purchase_order_number
TYPE BIGINT;

/* 2. Add a column to a pre-existing table */
ALTER TABLE sales_item
ADD day_of_week VARCHAR(8);

/* 3. Set a column in a pre-existing table to not null */
ALTER TABLE sales_item
ALTER COLUMN day_of_week SET NOT NULL;

/* 4. Rename a column in a pre-existing table */
ALTER TABLE sales_item
RENAME COLUMN day_of_week TO weekday;

/* 5. Delete a column in a pre-existing table */
ALTER TABLE sales_item
DROP COLUMN weekday;

/* 6. Rename a pre-existing table */
ALTER TABLE transaction_type
RENAME TO transaction;