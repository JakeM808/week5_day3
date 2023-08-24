
--Question 1:


SELECT  customer.first_name,  customer.last_name, address.district
FROM customer
JOIN address
ON address.address_id = customer.address_id
WHERE district = 'Texas'


--Question 2:

SELECT  customer.first_name,  customer.last_name, payment.amount
FROM payment
JOIN customer
ON customer.customer_id = payment.customer_id 
WHERE payment.amount >= 7


--Question 3:

SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id 
	FROM payment
	GROUP BY customer_id 
	HAVING sum(amount) > 175 
	
	
--Question 4:

SELECT customer.first_name, customer.last_name, country.country 
FROM country
JOIN city
ON country.country_id = city.country_id
JOIN address
ON city.city_id = address.city_id
JOIN customer
ON address.address_id = customer.address_id
WHERE country = 'Argentina';

Question 5:

SELECT *
FROM film_category
GROUP BY film_category.category_id, film_category.category_id
ORDER BY film_category.category_id DESC; 

--Question 6
SELECT f.film_id, f.title, count(*) AS num_actors
FROM actor a
JOIN film_actor fa
ON a.actor _d = fa.actor_id
JOIN film 7
ON f. film id = fa.fitm id
GROUP BY F.fitm ld, fäitte
ORDER BY num_aciors DLSc
LIMIT 1;

--Question 7. Which actor has been in the least movies?
SELECT fa.actor id, a. first name, a. last name, count ( * )
FROM film actor fa
JOIN actor a
AS num films
ON fa.
GROUP BY fa.actor_id, a.first_name,
ORDER BY num films

actor id = a. actor id


LIMIT 1
a. last name


SELECT c.country_id, c. country, COUNT(city.city) AS num_cities
FROM country cl
JOIN city
ON c.country_id
= city.country_id
GROUP BY c.country_id
ORDER BY num_cities DESC

SELECT country, ci.country_id, count(ci.country_id) AS country _ count
FROM city ci
JOIN country co
N ci.country_id
= co. country id
åROUP BY ci.country_id, country
6RDER BY country_count DESC
LIMIT 3;
-- Answer: India with 60.
See table to see top 3.


Question 9:
-- Use film_actor again because it has the films and the actors associated with them
II last _ name AS full _ name, count(fa.actor_id) AS acting _ count
SELECT fa.actor id, first name
FROM film actor fa
JOIN actor a
ON a. actor id = fa.actor id
GROUP BY fa.actor id, full name
HAVING BETWEEN 20 AND 25
bRDER BY acting _ count;


LIMIT 3;