SELECT 
    S.student_name,
    S.address,
    S.phone,
    S.status,
    S.class_id,
    AVG(M.mark) 'avg mark'
FROM
    student S
        INNER JOIN
    mark M ON S.student_id = M.student_id
GROUP BY S.student_name , S.address , S.phone , S.status , S.class_id, 'avg mark'
ORDER BY AVG(M.mark) DESC