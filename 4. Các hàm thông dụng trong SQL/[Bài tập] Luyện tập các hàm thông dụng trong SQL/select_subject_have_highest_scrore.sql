SELECT 
    `subject`.sub_name
FROM
    `subject`
        INNER JOIN
    mark ON `subject`.sub_id = mark.sub_id
WHERE
    mark = (SELECT MAX(mark) FROM mark);