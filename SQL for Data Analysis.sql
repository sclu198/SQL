Lesson 1-12
*** SELECT & FROM
/*
Try writing your own query to select only the id, account_id, and occurred_at
columns for all orders in the orders table.
*/

SELECT id, account_id, occurred_at
FROM orders;


Lesson 1-16
*** LIMIT
/*
Try using LIMIT yourself below by writing a query that displays
all the data in the occurred_at, account_id, and channel columns
of the web_events table, and limits the output to only the first 15 rows.
*/

SELECT occurred_at, account_id, channel FROM web_events
LIMIT 15;
