UPDATE customer 
SET 
    customer.is_delete = 0
WHERE
    customer.is_delete = 1
        AND customer.id IN (SELECT 
            subquery.id
        FROM
            (SELECT 
                customer.id
            FROM
                customer
            LEFT JOIN contract ON customer.id = contract.customer_id
            WHERE
                YEAR(contract.start_date) < 2022
            GROUP BY customer.id) AS subquery);