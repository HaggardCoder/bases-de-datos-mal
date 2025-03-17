INSERT INTO actor (first_name, last_name, last_update)
VALUES ('Eduardo', 'Molina',  NOW());

-- Update an actor's last name
UPDATE actor
SET last_name = 'Quevedo'
WHERE first_name = 'JOHN' AND last_name = 'SUVARI';

DELETE FROM actor
WHERE first_name = 'Eduardo' AND last_name = 'Quevedo';