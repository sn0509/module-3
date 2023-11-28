CREATE TABLE `contract` (
    id INT,
    start_date DATETIME,
    end_date DATETIME,
    deposit DOUBLE,
    employee_id INT,
    facility_id INT,
    is_delete BIT(1)
);