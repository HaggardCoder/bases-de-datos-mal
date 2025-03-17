SELECT DISTINCT customer.*, rental.rental_date
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE rental_date BETWEEN DATE('2005-05-01') AND DATE('2005-05-30');

SELECT film.title, COUNT(rental.rental_id) AS rental_count
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY rental_count DESC
LIMIT 1;

SELECT store.store_id, SUM(payment.amount) AS total_revenue
FROM payment
JOIN staff ON payment.staff_id = staff.staff_id
JOIN store ON staff.store_id = store.store_id
GROUP BY store.store_id;