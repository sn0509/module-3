SELECT DISTINCT
    facility.id,
    facility.name,
    facility.area,
    facility.cost,
    facility_type.name
FROM
    facility
        LEFT JOIN
    facility_type ON facility.facility_type_id = facility_type.id
        LEFT JOIN
    contract ON facility.id = contract.facility_id
WHERE
    YEAR(contract.start_date) = 2022
        AND (YEAR(contract.start_date)) != 2023