SELECT 
    S.student_id, S.student_name, AVG(mark)
FROM
    student S
        JOIN
    mark M ON S.student_id = M.student_id
GROUP BY S.student_id , S.student_name
HAVING AVG(mark) > 15