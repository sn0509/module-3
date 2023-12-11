SELECT 
    contract.id,
    contract.start_date,
    contract.end_date,
    contract.deposit,
    coalesce(sum(contract_detail.quantity),0) as attach_facility_quantity
FROM
    contract
        LEFT JOIN
    contract_detail ON contract.id = contract_detail.contract_id
group by contract.id,contract.start_date,contract.end_date,contract.deposit;