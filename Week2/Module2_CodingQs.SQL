

-- All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram
-- to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

-- Question 1
-- Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT
COUNT(TrackId)
FROM Tracks
WHERE Milliseconds >= '5000000';

-- How many tracks are returned?

-- 2

-- Question 2 
-- Find all the invoices whose total is between $5 and $15 dollars.

SELECT
COUNT(InvoiceId)
FROM Invoices
WHERE Total BETWEEN '5.00' AND '15.00';

-- While the query in this example is limited to 10 records, running the query correctly will indicate how many total 
-- records there are - enter that number below.

-- 168

-- Question 3 
-- Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT
Company
FROM Customers
WHERE State IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY') AND FirstName = 'Jack' AND LastName = 'Smith';

-- What company does Jack Smith work for?

-- Microsoft Corp 

-- Question 4 
-- Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT
InvoiceDate
FROM Invoices
WHERE (CustomerId IN ('56', '58')) AND (Total BETWEEN '1.00' AND '5.00') AND (InvoiceId = '315');

-- What was the invoice date for invoice ID 315?

-- 10-27-2012 

-- Question 5
-- Find all the tracks whose name starts with 'All'.

SELECT
Name 
FROM Tracks
WHERE Name LIKE 'All%';

-- While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.

-- 15 

-- Question 6 
-- Find all the customer emails that start with "J" and are from gmail.com.

SELECT
Email
FROM Customers
WHERE Email LIKE 'J%' AND Email LIKE '%@gmail.com';

-- Enter the one email address returned (you will likely need to scroll to the right) below.

-- jubarnett@gmail.com 

-- Question 7 
-- Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT
Total
FROM Invoices
WHERE BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC;

-- What is the total invoice amount of the first record returned? Enter the number below without a $ sign. 
-- Remember to sort in descending order to get the correct answer.

-- 13.86

-- Question 8 
-- Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the 
-- number of orders in descending order.

SELECT
COUNT(InvoiceId) AS Orders
,CustomerId
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC;

-- What is the number of items placed for the 8th person on this list? Enter that number below.

-- 7 

-- Question 9
-- Find the albums with 12 or more tracks.

SELECT
COUNT(TrackId) AS NUM_Tracks
,AlbumId
FROM Tracks
GROUP BY AlbumId
HAVING NUM_Tracks >= 12;

-- While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records 
-- there are. Enter that number below.

-- 158
