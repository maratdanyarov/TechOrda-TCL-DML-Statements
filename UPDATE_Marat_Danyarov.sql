-- Applying the UPDATE Statement

-- Question # 1
-- Alter the rental duration and rental rates of the film you inserted before to three weeks and 9.99, respectively.
-- the inserted film id is 1005

update film
set rental_duration = 3,
	rental_rate = 9.99
where
	film_id = 1005



-- Question # 2
-- Alter any existing customer in the database with at least 10 rental and 10 payment records. 
-- Change their personal data to yours (first name, last name, address, etc.). You can use any existing address from the "address" table. 
-- Please do not perform any updates on the "address" table, as this can impact multiple records with the same address.

-- update personal date for the customer with customer_id = 1
update customer
set first_name = 'Marat',
	last_name = 'Danyarov',
	email = 'maratdanyarov87@gmail.com',
	address_id = 6
where customer_id = 1;



-- Question # 3
-- Change the customer's create_date value to current_date.
update customer
set create_date = '2025-03-05'
where customer_id = 1;


