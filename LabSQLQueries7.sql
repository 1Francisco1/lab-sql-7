-- LAB 08 / 2.07

-- 1.In the table actor, which are the actors whose last names are not repeated?
select last_name, count(first_name) as firstname from actor
group by last_name
having firstname = 1
order by last_name;

-- 2.Which last names appear more than once?
select last_name, count(first_name) as firstname from actor
group by last_name
having firstname > 1
order by last_name;

-- 3.Using the rental table, find out how many rentals were processed by each employee.
select*from rental;
select staff_id, count(rental_id) as processed from rental
group by staff_id
order by staff_id;

-- 4.Using the film table, find out how many films were released each year.
select*from film;
select release_year, count(film_id) as totalfilms from film
group by release_year
order by release_year;

-- 5.Using the film table, find out for each rating how many films were there.
select rating, count(film_id) as totalfilms from film
group by rating
order by rating;

-- 6.What is the mean length of the film for each rating type. Round off the average lengths to two decimal places   NOT DONE YET
select rating, round(avg(length),2) from film
group by rating
order by rating;

-- 7.Which kind of movies (rating) have a mean duration of more than two hours?
select rating, avg(length) from film
group by rating
having avg(length) > 120
order by avg(length) desc;


