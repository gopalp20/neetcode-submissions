-- Write your query below
select name
from customers c
left join orders o
on c.id = o.customer_id
group by c.id
having sum(case when o.id is not null then 1 else 0 end) = 0