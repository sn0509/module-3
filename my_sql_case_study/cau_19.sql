UPDATE attach_facility
SET cost = cost * 2
WHERE id IN (
    SELECT attach_facility.id
    FROM attach_facility 
    INNER JOIN contract_detail ON attach_facility.id = contract_detail.attach_facility_id
    WHERE count(distinct(contract_detail.quantity)) > 10
    GROUP BY attach_facility.id
    HAVING COUNT(contract_detail.id) > 10
);