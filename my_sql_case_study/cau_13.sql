SELECT 
    attach_facility.id,
    attach_facility.name,
    COUNT(contract.id) AS user_count
FROM
    attach_facility
        LEFT JOIN
    contract_detail ON attach_facility.id = contract_detail.attach_facility_id
        LEFT JOIN
    contract ON contract_detail.contract_id = contract.id
        LEFT JOIN
    facility_type ON contract.facility_id
WHERE
    attach_facility.id IS NOT NULL
        AND facility_type.name = 'Room'
GROUP BY attach_facility.id , attach_facility.name
ORDER BY user_count