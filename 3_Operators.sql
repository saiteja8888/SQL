-- Active: 1695668200307@@127.0.0.1@3306@sakila
-- Comparision Operators
-- Equal = 
-- Less than <
-- Greater than >
-- Less than or Equal to <=
-- Greater than or Equal to >=
-- Not equal <> or !=

-- WHERE clause Comparison Operators

-- Equal (=)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id = 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name = 'Nick';

-- Less than (<)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id < 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name < 'Nick';

-- Greater than (>)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id > 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name > 'Nick';

-- Less than or Equal to (<=)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <= 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name <= 'Nick';

-- Greater than or Equal to (>=)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id >= 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name >= 'Nick';

-- Not equal (<> or !=)
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <> 100;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE first_name != 'Nick';

-- WHERE clause Comparison Operators

-- AND
SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH';

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100;

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100 AND last_name = 'TORN';


-- OR
SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH';

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR actor_id < 100; 

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR actor_id < 100 OR last_name = 'TEMPLE';


-- NOT
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE NOT actor_id = 5;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id <> 5;

SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor_id != 5;


-- All together

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND actor_id < 100 OR last_name = 'TEMPLE';

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR last_name = 'TEMPLE' AND actor_id < 100;

SELECT *
FROM sakila.actor
WHERE (first_name = 'KENNETH' AND actor_id < 100) OR last_name = 'TEMPLE';

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' AND (actor_id < 100 OR last_name = 'TEMPLE');

SELECT *
FROM sakila.actor
WHERE (first_name = 'KENNETH' OR last_name = 'TEMPLE') AND actor_id < 100;

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR (last_name = 'TEMPLE' AND actor_id < 100);

SELECT *
FROM sakila.actor
WHERE NOT (first_name = 'KENNETH' OR (last_name = 'TEMPLE' AND actor_id < 100));

SELECT *
FROM sakila.actor
WHERE first_name = 'KENNETH' OR NOT(last_name = 'TEMPLE' AND actor_id < 100);

-- WHERE clause Comparison Operators

-- IN
SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN');

SELECT *
FROM sakila.actor
WHERE actor_id IN (1,2,3,4,5,6,7,8);

SELECT *
FROM sakila.actor
WHERE (actor_id = 1 OR 
		actor_id = 2 OR 
		actor_id = 3 OR 
		actor_id = 4 OR 
		actor_id = 5 OR 
		actor_id = 6 OR 
		actor_id = 7 OR 
		actor_id = 8);

-- NOT IN
SELECT *
FROM sakila.actor
WHERE actor_id NOT IN (1,2,3,4,5,6,7);

-- In Subquery
SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN')
-- 		OR actor_id IN (41, 107, 166)
		OR actor_id IN 
					(SELECT actor_id 
					FROM sakila.actor
					WHERE last_name = 'DEGENERES');

SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK','JOHNNY','JOE','VIVIEN')
 		OR actor_id IN (41, 107, 166)
-- 		AND actor_id IN 
-- 					(SELECT actor_id 
-- 					FROM sakila.actor
-- 					WHERE last_name = 'DEGENERES');

-- BETWEEN
SELECT *
FROM sakila.actor
WHERE actor_id >= 10 AND actor_id <= 20;

SELECT *
FROM sakila.actor
WHERE actor_id BETWEEN 10 AND 20;

SELECT *
FROM sakila.actor
WHERE actor_id BETWEEN 11 AND 19;

SELECT *
FROM sakila.actor
WHERE actor_id NOT BETWEEN 11 AND 19;


-- LIKE
SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A%';

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'AL%';

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A__E';

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A__E%';

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'A%E%';

SELECT *
FROM sakila.actor
WHERE NOT (first_name LIKE 'A%E%' AND first_name LIKE 'A%');

SELECT *
FROM sakila.actor
WHERE NOT (first_name LIKE 'A%E%' AND first_name LIKE 'A%')
order BY first_name;

SELECT *
FROM sakila.actor
WHERE NOT (first_name LIKE 'A%E%')
order BY first_name;

-- -----------------------------------------------------
-- NULL 
-- -----------------------------------------------------
SELECT * 
FROM sakila.address;

SELECT * 
FROM sakila.address
WHERE address2 IS NULL;

SELECT * 
FROM sakila.address
WHERE address2 IS NOT NULL;

-- ORDER BY clause

SELECT *
FROM sakila.address
ORDER BY district;

SELECT *
FROM sakila.address
ORDER BY district DESC;

SELECT *
FROM sakila.address
ORDER BY district, postal_code DESC;

SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY CONCAT(first_name, ' ', last_name);

SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY FullName;

SELECT actor_id, CONCAT(first_name, ' ', last_name) AS FullName
FROM sakila.actor
ORDER BY 1;

-- Limit Keyword

SELECT *
FROM sakila.actor
ORDER BY actor_id;

SELECT *
FROM sakila.actor
ORDER BY actor_id
LIMIT 12;

SELECT *
FROM sakila.actor
ORDER BY actor_id
LIMIT 25, 5;