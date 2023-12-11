SELECT 
    MONTH(contract.start_date) AS `month`,
    COUNT(DISTINCT contract.customer_id) AS number_of_customer
FROM
    contract
WHERE
    YEAR(contract.start_date) = 2022
GROUP BY MONTH(contract.start_date)
ORDER BY `month`;