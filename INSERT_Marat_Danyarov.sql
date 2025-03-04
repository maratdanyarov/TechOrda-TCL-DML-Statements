-- Applying the INSERT Statement

-- Question # 1
-- Choose one of your favorite films and add it to the "film" table. Fill in rental rates with 4.99 and rental durations with 2 weeks.

insert into film (
    title,
    description,
    release_year,
    language_id,
    original_language_id,
    rental_duration,
    rental_rate,
    length,
    replacement_cost,
    rating,
    special_features,
    fulltext
) values (
    'The Matrix',
    'A computer hacker learns about the true nature of reality and his role in the war against its controllers.',
    1999,
    1,                  
    NULL,               
    2,                  
    4.99,               
    136,                
    19.99,              
    'PG-13',            
    ARRAY['Trailers', 'Commentaries'],  
    to_tsvector('The Matrix computer hacker reality war')  
);




-- Question # 2
-- Add the actors who play leading roles in your favorite film to the "actor" and "film_actor" tables (three or more actors in total).

insert into actor (
	first_name,
	last_name
) values
	('Keanu', 'Reeves'),
	('Carrie-Anne', 'Moss'),
	('Laurence', 'Fishburne');


-- Matrix film_id = 1005
-- Keanu Reeves actor_id = 204
-- Carrie-Anne Moss actor_id = 205
-- Laurence Fishburne actor_id = 206

insert into film_actor (
	actor_id,
	film_id
) values 
	(204, 1005),
	(205, 1005),
	(206, 1005);


-- Question # 3
-- Add your favorite movies to any store's inventory.

insert into inventory (
	film_id,
	store_id
) values
	(1005, 1),
	(1005, 2);


