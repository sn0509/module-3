SELECT 
    S.student_id, s.student_name, AVG(mark)
FROM
    student S
        JOIN
    Mark M ON S.student_id = M.student_id
group by S.student_id, S.student_name