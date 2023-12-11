UPDATE customer
INNER JOIN (
    SELECT customer.id
    FROM customer
    INNER JOIN contract ON customer.id = contract.customer_id
    INNER JOIN facility ON contract.facility_id = facility.id
    WHERE customer.customer_type_id = 2
        AND YEAR(contract.start_date) = 2022
    GROUP BY customer.id
    HAVING SUM(facility.id * facility.cost) > 10000000
) AS subquery ON customer.id = subquery.id
SET customer.customer_type_id = 1
WHERE customer.customer_type_id = 2;