select c.customer_id,c.customer_name
from customers c
left join orders o
on c.customer_id = o.customer_id
where product_name in ('A','B','C')

group by (c.customer_id,c.customer_name)

having sum(case when product_name in ('A') then 1 else 0 end) > 0 and 
sum(case when product_name in ('B') then 1 else 0 end) > 0 and
sum(case when product_name in ('C') then 1 else 0 end) = 0
order by c.customer_name