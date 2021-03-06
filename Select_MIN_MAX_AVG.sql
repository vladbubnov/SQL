select *
from orders
where ship_country in ('France', 'Austria', 'Spain'); 

select *
from orders
order by required_date desc, shipped_date

select MIN(unit_price)
from orders
where units_in_stock > 30;

select MAX(units_in_stock)
from products 
where unit_price > 30;

select AVG(shipped_date - order_date)
from orders
where ship_country = 'USA';

select order_id, customer_id, freight, ship_country
from orders
where ship_country like 'N%'
order by freight desc 
limit 10;

select first_name, last_name, home_phone, region
from employees 
where region is null;

select count(*)
from customers
where region is not null;

select country, count(*)
from suppliers
group by country
order by count(*) desc;

select ship_country, sum(freight)
from orders 
where ship_country is not null
group by ship_country
having sum (freight) > 2750
oerder by sum(freight) desc