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
