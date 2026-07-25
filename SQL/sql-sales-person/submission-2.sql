-- Write your query below
with data as (
    select s.name,s.sales_id,
    c.name as company_name

    from sales_person s
    left join orders o
    on s.sales_id = o.sales_id

    left join company c
    on o.com_id = c.com_id
)

select name
from data
group by (name,sales_id)
having count(case when company_name = 'CRIMSON' then 1 end) < 1;


