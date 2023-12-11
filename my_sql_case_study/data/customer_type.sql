CREATE TABLE customer_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50),
    is_delete BIT(1)
);

insert into customer_type(type_name) values ('Diamond'),('Platinum'),('Gold'),('Silver'),('Member');

UPDATE customer_type 
SET 
    is_delete = 0
WHERE
    is_delete IS NULL;


SELECT 
    *
FROM
    customer_type;