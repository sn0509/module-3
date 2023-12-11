SELECT 
    customer.id,
    customer.name,
    customer.email,
    customer.phone_number,
    customer.date_of_birth,
    customer.address,
    'customer' AS infor_type
FROM
    customer 
UNION SELECT 
    employee.id,
    employee.name,
    employee.email,
    employee.phone_number,
    employee.date_of_birth,
    employee.address,
    'employee' AS info_type
FROM
    employee