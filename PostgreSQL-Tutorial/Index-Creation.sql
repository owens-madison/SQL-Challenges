/*
    1: Create an index (for one column)
    2: Create an index (for multiple columns)
*/

/* 1. Create an index (for one column) */
CREATE INDEX transaction_id
ON transaction(name);

/* 2. Create an index (for multiple columns) */
CREATE INDEX transaction_id_2
ON transaction(name, payment_type);