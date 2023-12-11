SELECT 
    contract.id,
    facility.name,
     attach_facility.name,
    COUNT(DISTINCT contract_detail.attach_facility_id) AS number_of_use
FROM
    contract
        LEFT JOIN
    contract_detail ON contract.id = contract_detail.contract_id
        LEFT JOIN 
    attach_facility ON contract_detail.attach_facility_id = attach_facility.id
        Left JOIN
    facility ON contract.facility_id = facility.id
        LEFT JOIN
    facility_type ON facility.facility_type_id = facility_type.id
GROUP BY contract.id , facility_type.name, attach_facility.name,facility.name
HAVING number_of_use = 1;