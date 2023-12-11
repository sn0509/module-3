SELECT 
    employee.id,
    employee.name,
    education_degree.name,
    division.name,
    employee.phone_number,
    employee.address,
    COUNT(CASE
        WHEN YEAR(contract.start_date) BETWEEN 2022 AND 2023 THEN contract.id
    END) AS contract_quantity
FROM
    employee
        LEFT JOIN
    education_degree ON employee.education_degree_id = education_degree.id
        LEFT JOIN
    division ON employee.division_id = division.id
        LEFT JOIN
    contract ON employee.id = contract.employee_id
GROUP BY employee.id , employee.name , education_degree.name , division.name , employee.phone_number , employee.address
HAVING contract_quantity <= 3;