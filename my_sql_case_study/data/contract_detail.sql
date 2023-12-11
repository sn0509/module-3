CREATE TABLE contract_detail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    contract_id INT,
    attach_facility_id INT,
    quantity INT DEFAULT 0,
    is_delete BIT(1) default 0,
    FOREIGN KEY (contract_id)
        REFERENCES contract (id),
    FOREIGN KEY (attach_facility_id)
        REFERENCES attach_facility (id)
);

insert into contract_detail(contract_id,attach_facility_id,quantity) values(1, 3, 7),
  (2, 1, 5),
  (3, 4, 10),
  (4, 2, 3),
  (5, 5, 8),
  (6, 1, 6),
  (7, 3, 9),
  (8, 5, 4),
  (9, 2, 2),
  (10, 4, 5);
 ;