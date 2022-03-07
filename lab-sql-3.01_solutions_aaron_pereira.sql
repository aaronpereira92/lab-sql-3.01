-- Lab | SQL - Lab 3.01

SET SQL_SAFE_UPDATES = 0;
USE sakila;

-- 1. Drop column picture from staff.
SELECT * FROM sakila.staff;

ALTER TABLE sakila.staff
  DROP COLUMN picture;
  
  SELECT * FROM sakila.staff;
  
  -- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
  SELECT * FROM sakila.staff;
  
ALTER TABLE staff ALTER COLUMN username SET DEFAULT 'NONE';
ALTER TABLE staff ALTER COLUMN password SET DEFAULT 'NONE';

SELECT * FROM customer
WHERE last_name IN ("SANDERS");

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active) 
VALUES
('TAMMY','SANDERS', 79 , 'TAMMY.SANDERS@sakilacustomer.org', 2, 1);

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER'; -- customer_id is 130

Select * FROM inventory 
WHERE film_id = 1; -- inventory_id = 1 to 4

SELECT * FROM staff; -- Mike's staff_id =1 and store_id= 1

SELECT * FROM rental ;

INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id) 
VALUES
('2022-02-28 12:35:30', 1, 130, 1);

SELECT * FROM rental 
WHERE customer_id = 130; -- Here you can see that it was added in the last record


