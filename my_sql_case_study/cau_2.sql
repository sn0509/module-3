use resort_manager;

SELECT 
    *
FROM
    customer
WHERE
    TIMESTAMPDIFF(YEAR,
        date_of_birth,
        NOW()) BETWEEN 18 AND 50
       and  SUBSTRING_INDEX(address, ', ', - 1) IN ('Sài Gòn' , 'Quảng Nam');