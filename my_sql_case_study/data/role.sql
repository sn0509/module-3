CREATE TABLE `role` (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(255),
    is_delete BIT(1)
);

insert into `role`(role_name,is_delete) values ('Admin',0),('Employee',0);
SELECT 
    *
FROM
    `role`;