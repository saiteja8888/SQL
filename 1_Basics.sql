-- Active: 1695668200307@@127.0.0.1@3306

-- My SQL is licenced under GNU General Public License
show DATABASES;

use sakila;

show tables;

-- Retrieve static value
SELECT 'MyFirstValue';

SELECT 'MyFirstValue' as SomeValue;

select 1+1;

select 1+1 as two;

select now();

select curdate();

select curtime();

select pi();

select mod(45,7);

select sqrt(25);

-- Retrieve all the data from table

select * from sakila.actor;

select * from sakila.city;

use sakila;

select * from city;

-- Retrieve all the data ordered by single column

select * from sakila.actor;

select * from sakila.actor
ORDER BY first_name;

select * from sakila.actor 
order by first_name desc;

select * from sakila.actor
ORDER BY last_name desc;

-- Retrieve selected columns from table
select * from sakila.actor;

select first_name, last_name from sakila.actor;

select first_name, last_name
from sakila.actor
ORDER BY first_name desc;

-- Retriev the data with filter condition
select * from sakila.actor;

select * from sakila.actor
where actor_id >100;

select * from sakila.actor
where actor_id <100;

select actor_id,first_name,last_name 
from sakila.actor
where first_name = 'NICK';

-- Retrieve all the data with filter condition and ordered by columns

select * 
from sakila.actor 
where first_name = 'nick';

select actor_id, first_name, last_name
from sakila.actor 
where first_name = 'NICK'
ORDER BY actor_id desc;

select actor_id, first_name, last_name
from sakila.actor 
where actor_id > 100
ORDER BY first_name, last_name desc;

-- Retrieve empty result set 
select * from sakila.actor 
where 1=2;

-- select clause arithmetic expressiosn order 
-- Multiplication(*), Division(/), Integer Division(DIV), Modulo(% or MOD), Addition(+), subtraction(-)

-- Retrieve column names using aliases
select rental_date, inventory_id, return_date 
from sakila.rental;

select rental_date as RentalDate, 
       inventory_id as FilmListID, 
       return_date as ReturnDate  
from sakila.rental;

-- Retrieve values based on arithmetic expressions

select replacement_cost-rental_rate, 
    film_id as FilmID, 
    length/60
from sakila.film;

select replacement_cost-rental_rate as CostDiff, 
    film_id as FilmID, 
    length/60 as TimeinHour
from sakila.film;

select rental_rate as RentalRate,
rental_rate +3 * 4 - 1 as Result1,
(rental_rate +3) * 4 - 1 as Result2,
(rental_rate +3) * (4 - 1) as Result3,
rental_rate +(3 * 4) - 1 as Result4
from sakila.film;

select replacement_cost as ReplacementCost,
       replacement_cost/5 as DecimalRentalRate,
       replacement_cost DIV 5 as IntegerRentalrate,
       replacement_cost % 5 as RemainderRentalRate
from sakila.film;

