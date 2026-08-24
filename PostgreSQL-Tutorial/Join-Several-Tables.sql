/*
    1: Joining of 3 tables + a calculation within the SELECT statement

*/

/* 1. Joining of 3 tables + a calculation within the SELECT statement */
SELECT 
	sales_order.id, 
	sales_item.quantity, 
	item.price, 
	(sales_item.quantity * item.price) AS total 
    /* without the AS '...', would just be titled '?column?' */
FROM sales_order
JOIN sales_item
	ON sales_item.sales_order_id = sales_order.id /* first join of 2 tables */
JOIN item
	ON item.id = sales_item.item_id 
    /* joins the generated table of the first join, with the 3rd table (items) */
