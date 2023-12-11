select student_id, student_name, class_name
from student
join class on student.class_id =  class.class_id
where class_name = 'A1';