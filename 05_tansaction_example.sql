START TRANSACTION;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, return_date, last_update)
VALUES (NOW(), 1, 1, 1, NULL, NOW());
UPDATE inventory
SET last_update = NOW()
WHERE inventory_id = 1;
COMMIT;