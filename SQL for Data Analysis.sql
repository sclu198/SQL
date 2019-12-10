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


Lesson 1-19
*** ORDER BY
/*
1. Write a query to return the 10 earliest orders in the orders table.
Include the id, occurred_at, and total_amt_usd.
*/

SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;

/*
2. Write a query to return the top 5 orders in terms of largest total_amt_usd.
Include the id, account_id, and total_amt_usd.
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;

/*
3. Write a query to return the lowest 20 orders in terms of smallest total_amt_usd.
Include the id, account_id, and total_amt_usd.
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd
LIMIT 20;


Lesson 1-22
*** ORDER BY
/*
1. Write a query that displays the order ID, account ID, and total dollar amount for all the orders,
sorted first by the account ID (in ascending order), and then by the total dollar amount (in descending order).
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id,  total_amt_usd DESC;

/*
2. Now write a query that again displays order ID, account ID, and total dollar amount for each order,
but this time sorted first by total dollar amount (in descending order), and then by account ID (in ascending order).
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC, account_id;
