select address, count(student_id) as 'Số lượng học viên'
from student
group by address;