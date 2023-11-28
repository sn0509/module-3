CREATE TABLE `customer` (
    id INT,
    customer_type_id INT,
    name VARCHAR(50),
    getder BIT(1),
    date_of_birth VARCHAR(50),
    id_card VARCHAR(12),
    phone_number VARCHAR(12),
    email VARCHAR(45),
    address VARCHAR(50),
    is_delete BIT(1)
);