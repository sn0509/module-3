CREATE TABLE `facility` (
    id INT,
    name VARCHAR(50) NOT NULL,
    area INT,
    cost DOUBLE,
    max_people INT,
    rent_type_id INT,
    facility_type_id INT,
    standarf_room VARCHAR(45),
    description_other_convenience VARCHAR(45),
    pool_area DOUBLE,
    number_of_floor INT,
    facility_fee TEXT,
    is_delete BIT(1)
);