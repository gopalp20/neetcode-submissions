-- Write your query below
with lavada as (
    select student_id,exam_id,score,row_number() over(partition by student_id
    order by score desc,exam_id) as rk
    from exam_results
)

select student_id,exam_id,score
from lavada 
where rk = 1