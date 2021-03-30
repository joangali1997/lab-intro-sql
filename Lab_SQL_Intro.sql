USE sakila;

SELECT *
FROM actor
adress, category, city, country, customer, film, film_actor, film_category, film_text, inventory, language, payment, rental, staff, store;

SELECT title
FROM film;

SELECT name as language
FROM language
GROUP BY name;
-- List of languages is: English, French, German, Italian, Japanese and Mandarin

SELECT COUNT(DISTINCT(staff_id))
FROM staff;
-- The company has 2 staff

SELECT COUNT(DISTINCT(store_id))
FROM store;
-- The company has 2 stores

SELECT first_name
from staff
GROUP BY first_name;
-- Employees first names are: Jon & Mike

SELECT *
FROM rental;

SELECT rental_date
FROM rental
GROUP BY rental_date;

SELECT COUNT(DISTINCT CAST(rental_date AS DATE))
FROM   rental
WHERE  rental_date >= '20050501' AND rental_date < '20050531' ;
-- Knowing that the rental dates were only from May 2005, the number of unique days customers rented movies are 7.