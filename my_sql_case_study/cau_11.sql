SELECT 
    customer.name,
    customer_type.type_name,
    customer.address,
    attach_facility.name,
    contract.end_date
FROM
    customer
        LEFT JOIN
    customer_type ON customer.customer_type_id = customer_type.id
        LEFT JOIN
    contract ON customer.id = contract.customer_id
        LEFT JOIN
    contract_detail ON contract.id = contract_detail.contract_id
        LEFT JOIN
    attach_facility ON contract_detail.attach_facility_id = attach_facility.id
WHERE
    customer_type.type_name = 'Diamond'
        AND SUBSTRING_INDEX(customer.address, ', ', - 1) IN ('Vinh' , 'Quảng Ngãi')