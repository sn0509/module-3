SELECT 
    contract.id,
    employee.name AS employee,
    customer.name AS customer,
    customer.phone_number AS phone_number_of_customer,
    facility.name AS facility_name,
    COALESCE(SUM(contract_detail.quantity), 0) AS attach_facility_quantity,
    contract.deposit
FROM
    contract
        LEFT JOIN
    customer ON contract.customer_id = customer.id
        LEFT JOIN
    employee ON contract.employee_id = employee.id
        LEFT JOIN
    contract_detail ON contract.id = contract_detail.contract_id
        LEFT JOIN
    facility ON contract.facility_id = facility.id
        LEFT JOIN
    attach_facility ON contract_detail.attach_facility_id = attach_facility.id
WHERE
    ((YEAR(contract.start_date) = 2022
        AND MONTH(contract.start_date) >= 10)
        AND contract.start_date NOT BETWEEN '2023-01-01' AND '2023-06-30')
GROUP BY contract.id , employee , customer , phone_number_of_customer , facility_name , contract.deposit
	