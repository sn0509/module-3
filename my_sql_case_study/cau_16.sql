DELETE FROM employee 
WHERE
    employee.id NOT IN (SELECT DISTINCT
        employee.id
     FROM (
        SELECT DISTINCT employee.id AS employee_id
        FROM employee
        INNER JOIN contract ON employee.id = contract.employee_id
        WHERE YEAR(contract.start_date) BETWEEN 2022 AND 2023
    ) AS temp
);