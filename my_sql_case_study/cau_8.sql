select distinct customer.id, customer.name
from customer;

select customer.name
from customer
group by name;

-- select customer.name
-- from (
-- 	select customer.name,row.number() over (partition by customer.name order by customer.name) as row_num
-- 	from customer) as ranked
-- where row_num = 1;