CREATE TABLE `employee` (
    id INT,
    name VARCHAR(50),
    date_of_birth VARCHAR(50),
    id_card VARCHAR(12),
    salary DOUBLE,
    phone_number VARCHAR(12),
    email VARCHAR(45),
    address VARCHAR(50),
    position_id INT,
    education_degree_id INT,
    division_id INT,
    user_name VARCHAR(255),
    is_delete BIT(1)
);