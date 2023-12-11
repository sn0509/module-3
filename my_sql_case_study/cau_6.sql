SELECT DISTINCT
    facility.id,
    facility.name,
    facility.area,
    facility.cost,
    facility_type.name,
    contract.start_date
FROM
    facility
        LEFT JOIN
    contract ON facility_id = contract.facility_id
        LEFT JOIN
    facility_type ON facility_type_id = facility_type.id
WHERE
    YEAR(contract.start_date) = 2023
        AND MONTH(contract.start_date) NOT in (1 , 3)	