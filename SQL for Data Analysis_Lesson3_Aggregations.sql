Lesson 3-7
***SUM
/*
1. Find the total amount of poster_qty paper ordered in the orders table.
*/

# My trial(correct)
SELECT SUM(poster_qty) AS total_amount_poster
FROM orders;

# Lesson code
SELECT SUM(poster_qty) AS total_poster_sales
FROM orders;

/*
2. Find the total amount of standard_qty paper ordered in the orders table.
*/

# My trial(correct)
SELECT SUM(standard_qty) AS total_amount_standard
FROM orders;

# Lesson code
SELECT SUM(standard_qty) AS total_standard_sales
FROM orders;

/*
3. Find the total dollar amount of sales using the total_amt_usd in the orders table.
*/

# My trial(correct)
SELECT SUM(total_amt_usd) AS total_dollar_amount
FROM orders;

# Lesson code
SELECT SUM(total_amt_usd) AS total_dollar_sales
FROM orders;

/*
4. Find the total amount spent on standard_amt_usd and gloss_amt_usd paper for each order in the orders table. 
This should give a dollar amount for each order in the table.
*/

# My trial
N/A

#Lesson code
SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;

/*
5. Find the standard_amt_usd per unit of standard_qty paper. 
Your solution should use both an aggregation and a mathematical operator.
*/

# My trial(correct)
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_unit
FROM orders;

# Lesson Code
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_price_per_unit
FROM orders;


Lesson 3-11
***MIN, MAX, AVG
/*
1. When was the earliest order ever placed? You only need to return the date.
*/

# My code
SELECT MIN(occurred_at) AS earliest_order
FROM orders;
# Lesson code
SELECT MIN(occurred_at) 
FROM orders;
