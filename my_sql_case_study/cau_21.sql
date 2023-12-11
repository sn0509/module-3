CREATE VIEW v_nhan_vien AS
    SELECT 
        employee.*
    FROM
        employee
            LEFT JOIN
        contract ON employee.id = contract.employee_id
    WHERE
        SUBSTRING_INDEX(employee.address, ', ', - 1) = 'Hải Châu'
            AND date(contract.start_date) = '2022-12-12';
            
select v_nhan_vien;