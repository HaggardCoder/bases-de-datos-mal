START TRANSACTION;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, return_date, last_update)
SELECT NOW(), inventory_id, 1, 1, NULL, NOW()
FROM inventory
WHERE inventory_id = 2;  
ROLLBACK;
