USE sakila;

#1 all actors first name is 'Scarelt'
SELECT first_name, last_name FROM actor
WHERE first_name = 'Scarlett';

#2 all actors last name is 'Johansson'
SELECT first_name, last_name FROM actor
WHERE last_name = 'Johansson';

#3 how many movies available for rent
SELECT COUNT(title) FROM film;

#4 how many films have been rented?
SELECT COUNT(rental_id) FROM rental
WHERE rental_date > 0;


#5 Longest and shortest rental perdiod
SELECT max(return_date - rental_date) AS longest_rental,
min(return_date - rental_date) AS shortest_rental
FROM rental;

#6 Longest and shortest movies
SELECT film_id, title, length FROM film
WHERE length = 185
OR length = 46
ORDER BY length DESC ;

#7 average movie duration
SELECT avg(length) FROM film ;

#8 What's the average movie duration expressed in format (hours, minutes)?
SELECT time_format((avg(length)), 'hh:mm') FROM film ;

#9 How many movies longer than 3 hours?
SELECT title, length FROM film
WHERE length >240;

#10 format name and email
SELECT first_name, last_name, email FROM customer;

#11 length of longest film title
SELECT title, max(length(title)) FROM film;

