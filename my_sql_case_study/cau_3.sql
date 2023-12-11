SELECT 
    COUNT(contract.id) as total_contract, customer.name, customer_type.type_name 
FROM
    contract
        INNER JOIN
    customer ON contract.customer_id = customer.id
        INNER JOIN
    customer_type ON customer.customer_type_id = customer_type.id
    where customer.customer_type_id = 1
GROUP BY customer.name , customer_type.type_name;