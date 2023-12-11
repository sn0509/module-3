SELECT 
    contract.customer_id,
    customer.name,
    customer_type.type_name,
    contract.id AS contract_id,
    attach_facility.name AS attach_facility,
    contract.start_date,
    contract.end_date,
    SUM((DATEDIFF(contract.end_date, contract.start_date) + 1) * COALESCE(facility.cost, 0) + COALESCE(attach_facility.cost * contract_detail.quantity, 0)) AS total_cost
FROM
    customer
        LEFT JOIN
    customer_type ON customer.customer_type_id = customer_type.id
        LEFT JOIN
    contract ON customer.id = contract.customer_id
		left join
	facility on facility_id = contract.facility_id
        LEFT JOIN
    contract_detail ON contract.id = contract_detail.contract_id
        LEFT JOIN
    attach_facility ON contract_detail.attach_facility_id = attach_facility.id
    GROUP BY
    contract.customer_id, customer.name, customer_type.type_name, contract.id, attach_facility.name, contract.start_date, contract.end_date;