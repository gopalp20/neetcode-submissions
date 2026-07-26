-- Write your query below
select u.name as name,sum(case when r.distance is not null then
r.distance else 0 end) as travelled_distance
from users u
left join rides r
on u.id = r.user_id
group by (u.id,u.name)
order by travelled_distance desc,name