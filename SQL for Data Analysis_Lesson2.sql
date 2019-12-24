Lesson 2-4
*** JOIN
/*
1.Try pulling all the data from the accounts table, and all the data from the orders table.
*/

SELECT orders.*, accounts.*
FROM accounts
JOIN orders
ON accounts.id = orders.account_id;


/*
2. Try pulling standard_qty, gloss_qty, and poster_qty from the orders table, and the website and the primary_poc from the accounts table.
*/

SELECT orders.standard_qty, orders.gloss_qty,
       orders.poster_qty,  accounts.website,
       accounts.primary_poc
FROM orders
JOIN accounts
ON orders.account_id = accounts.id

Lesson 2-12
*** Alias
/*
1. Provide a table for all web_events associated with account name of Walmart. 
There should be three columns. Be sure to include the primary_poc, time of the event, and the channel for each event. 
Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.
*/

# My Trial (Must use Alias)
SELECT web_events.occurred_at, 
	     web_events.channel,
       accounts.primary_poc,
       accounts.name
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
WHERE accounts.name = 'Walmart';

# Lesson Code
SELECT w.occurred_at, 
	     w.channel,
       a.primary_poc,
       a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id
WHERE a.name = 'Walmart';

/*
2. Provide a table that provides the region for each sales_rep along with their associated accounts.
Your final table should include three columns: the region name, the sales rep name, and the account name.
Sort the accounts alphabetically (A-Z) according to account name.
*/

# My Trial (Only 1 column display)
SELECT r.name, 
	s.name, 
       a.name
FROM region r
JOIN sales_reps s
ON r.id = s.id
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name;

# Lesson code
SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
ORDER BY a.name;

/*
3. Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order.
Your final table should have 3 columns: region name, account name, and unit price.
A few accounts have 0 for total, so I divided by (total + 0.01) to assure not dividing by zero.
*/

# My Trial (Syntax Error)
SELECT o.total_amt_usd,
       o.total,
       r.name region,
       a.name account
FROM orders o
JOIN accounts a
ON o.account_id = a.id
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN region r
ON s.region_id = r.id
WHERE total_amt_usd/total+0.01 AS unit price;

# Lesson Code
SELECT r.name region, 
       a.name account, 
       o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id;






