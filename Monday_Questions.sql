--#1 Answer: 2
select *
from actor 
where last_name = 'Wahlberg';

-- #2 Answer: 3,230
select count(amount)
from payment 
where amount > 3.99 and amount < 5.99;

-- #3 Answer 72 films are tied for first
select count(film_id), film_id
from inventory
group by film_id
order by count desc;

-- #4 Answer: 0
select first_name, last_name
from customer
where last_name = 'William';

--#5 Answer: staff_id 2
select count(payment_id), staff_id
from payment
group by staff_id
order by count desc;



-- #6 Answer: 591
select count(distinct first_name)
from customer;

-- #7 Answer film_id 508 has 15 actors
select count(actor_id), film_id
from film_actor
group by film_id
order by count desc;

--8# Answer: 13
select first_name, last_name, store_id
from customer
where last_name like '%es'
order by store_id;

--9# Answer: 3 payments 2.99, 4.99 and 6.99
select count(amount),amount 
from payment 
where customer_id > 380 and customer_id  < 430 
group by amount 
order by count(amount) > 250 desc;

--10# Answer: 4 catagories and PG-13 has the most
select count(rating), rating
from film 
group by rating
order by count(rating) desc;