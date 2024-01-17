-- Active: 1695668200307@@127.0.0.1@3306@sakila

-- Retrieve results based on function
select * from sakila.actor;

select * from sakila.payment;

-- Integer Operations

select amount, 
       Round(amount) Amt,
       Round(amount,1) Amt1,
       Floor(amount) FloorAmt, CEILING(amount) CeilingAmt
from sakila.payment;

select round(0.49);
select ROUND(0.5);
select round(0.499999);
select round(0.51111);

-- String Operations

-- Concat
select CONCAT(first_name, ' ', last_name) AS FullName
from sakila.actor;

-- Left function 
select CONCAT(first_name, ' ', last_name) AS FullName,
       CONCAT(LEFT(first_name,1), ' ', left(last_name,1)) as FirstInitial
from sakila.actor;

-- Length function
select CONCAT(first_name, ' ', last_name) AS FullName,
       length(concat(first_name, ' ', last_name)) as Length 
from sakila.actor;

-- Various function
select CONCAT(first_name, ' ', last_name) AS FullName,
       Reverse(CONCAT(first_name, ' ', last_name)) AS ReverseFullName,
       Replace(concat(first_name, ' ', last_name), 'S', '$') AS ReplaceExample
from sakila.actor;

-- Date Operations

-- Date Format function 
select concat(first_name, ' ', 'last_name') as FullName, 
       DATE_FORMAT(last_update, '%m/%d/%y') as LastUpdated1,
       DATE_FORMAT(last_update, '%d-%m-%Y') as LastUpdated2,
       DATE_FORMAT(last_update, '%d %b %Y %T:%f') as LastUpdated3
from sakila.actor;

-- Date Format with GET_FORMAT function 
select concat(first_name, ' ', last_name) AS FullName,
       DATE_FORMAT(last_update, GET_FORMAT(DATETIME, 'EUR')) AS LastUpdated1,
       DATE_FORMAT(last_update, GET_FORMAT(DATETIME, 'ISO')) AS LastUpdated2,
       DATE_FORMAT(last_update, GET_FORMAT(DATETIME, 'USA')) AS LastUpdated3
from sakila.actor;

-- Other functions
select rental_date,
       DAYOFWEEK(rental_date) as dayOfWeek,
       QUARTER(rental_date) as `Quarter`,
       WEEK(rental_date) as `week`,
       MONTHNAME(rental_date) as `MonthName`
from sakila.rental;

-- DateTime FUnctions
-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

-- Numeric FUnctions
-- https://dev.mysql.com/doc/refman/8.0/en/numeric-functions.html

-- String functions 
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

-- Distinct Operations
select first_name from sakila.actor;

select distinct first_name from sakila.actor;

select last_name from sakila.actor;

select distinct last_name from sakila.actor;

