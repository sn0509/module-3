use resort_manager;
SELECT 
    *
FROM
    employee
WHERE
    SUBSTRING_INDEX(name, ' ', -1) rlike '^[HKT]' and length(name) <= 15;
