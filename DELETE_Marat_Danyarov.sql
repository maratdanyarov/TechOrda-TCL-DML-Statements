-- Applying the DELETE and TRUNCATE Statements

-- Question # 1
-- Remove a previously inserted film from the inventory and all corresponding rental records
-- Marat: we did not insert any rental records in previous tasks, so I just deleted the film from inventory
delete from inventory 
where film_id = 1005

-- Marat: here are the queries that can be potentially used we had the corresponding rental records. After them the query above can be used.
delete from payment
where rental_id in (
	select rental_id
	from rental
	where inventory_id in (
		select inventory_id
		from inventory
		where film_id = 1005
	)
);

delete from rental
where inventory_id in (
	select inventory_id
	from inventory 
	where film_id = 1005
)

-- Question # 2
-- Remove any records related to you (as a customer) from all tables except "Customer" and "Inventory"
delete from payment 
where customer_id = 1


delete from rental
where customer_id = 1


