CREATE TABLE contract (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    deposit DOUBLE DEFAULT 0,
    employee_id INT,
    customer_id INT,
    facility_id INT,
    is_delete BIT(1),
    FOREIGN KEY (employee_id)
        REFERENCES employee (id),
    FOREIGN KEY (customer_id)
        REFERENCES customer (id),
    FOREIGN KEY (facility_id)
        REFERENCES facility (id)
);

insert into contract(start_date,end_date,deposit,employee_id,customer_id,facility_id,is_delete) values 
('2023-01-01', '2023-01-31', 50000000, 1, 1, 1, 0),
  ('2023-02-01', '2023-02-28', 60000000, 2, 2, 2, 0),
  ('2023-03-01', '2023-03-31', 75000000, 3, 3, 3, 0),
  ('2023-04-01', '2023-04-30', 55000000, 4, 4, 4, 0),
  ('2023-05-01', '2023-05-31', 70000000, 5, 5, 5, 0),
  ('2023-06-01', '2023-06-30', 80000000, 6, 6, 6, 0),
  ('2023-07-01', '2023-07-31', 90000000, 7, 7, 7, 0),
  ('2023-08-01', '2023-08-31', 60000000, 8, 8, 8, 0),
  ('2023-09-01', '2023-09-30', 75000000, 9, 9, 9, 0),
  ('2023-10-01', '2023-10-31', 70000000, 10, 10, 1, 0),
  ('2023-11-01', '2023-11-30', 90000000, 1, 1, 2, 0),
  ('2023-12-01', '2023-12-31', 80000000, 2, 2, 3, 0),
  ('2024-01-01', '2024-01-31', 55000000, 3, 3, 4, 0),
  ('2024-02-01', '2024-02-29', 65000000, 4, 4, 5, 0),
  ('2024-03-01', '2024-03-31', 70000000, 5, 5, 6, 0),
  ('2024-04-01', '2024-04-30', 80000000, 6, 6, 7, 0),
  ('2024-05-01', '2024-05-31', 75000000, 7, 7, 8, 0),
  ('2024-06-01', '2024-06-30', 90000000, 8, 8, 9, 0),
  ('2024-07-01', '2024-07-31', 60000000, 9, 9, 1, 0),
  ('2024-08-01', '2024-08-31', 70000000, 10, 10, 2, 0),
  ('2024-09-01', '2024-09-30', 80000000, 1, 1, 3, 0),
  ('2024-10-01', '2024-10-31', 75000000, 2, 2, 4, 0),
  ('2024-11-01', '2024-11-30', 85000000, 3, 3, 5, 0),
  ('2024-12-01', '2024-12-31', 90000000, 4, 4, 6, 0),
  ('2025-01-01', '2025-01-31', 60000000, 5, 5, 7, 0),
  ('2025-02-01', '2025-02-28', 70000000, 6, 6, 8, 0),
  ('2025-03-01', '2025-03-31', 80000000, 7, 7, 9, 0),
  ('2025-04-01', '2025-04-30', 85000000, 8, 8, 1, 0),
  ('2025-05-01', '2025-05-31', 75000000, 9, 9, 2, 0),
  ('2025-06-01', '2025-06-30', 95000000, 10, 10, 3, 0);

SELECT 
    *
FROM
    contract;