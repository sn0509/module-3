SELECT 
    student.student_name, subject.sub_name, mark
FROM
    mark
        INNER JOIN
    student ON mark.student_id = student.student_id
        INNER JOIN
    `subject` ON mark.sub_id = `subject`.sub_id
ORDER BY mark DESC , student.student_name ASC;