CREATE TABLE facility (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    area INT,
    cost DOUBLE,
    max_people INT,
    rent_type_id INT,
    facility_type_id INT,
    standard_room VARCHAR(45),
    description_other_convenience VARCHAR(45),
    pool_area DOUBLE,
    number_of_floors INT,
    facility_free TEXT,
    is_delete BIT(1),
    FOREIGN KEY (rent_type_id)
        REFERENCES rent_type (id),
    FOREIGN KEY (facility_type_id)
        REFERENCES facility_type (id)
);

insert into facility (name,area,cost,max_people,rent_type_id,facility_type_id,standard_room,description_other_convenience,pool_area,number_of_floors,facility_free,is_delete) values
('Oceanfront Villa', 400, 350.00, 8, 2, 1, 'Luxury Villa', 'Private beach access, Spa', 50.5, 2, 'Wi-Fi, Breakfast, Rent a car to visit the resort, spa', 0),
('Mountain Retreat Villa', 350, 300.00, 6, 2, 1, 'Deluxe Villa', 'Mountain view, Hot tub', 40.0, 1, 'Wi-Fi, Karaoke, Breakfast, Spa', 0),
('Lakeside Villa', 300, 280.00, 4, 2, 1, 'Executive Villa', 'Lake view, Fireplace', 30.0, 1, 'Wi-Fi, Breakfast', 0),
('Hilltop House', 200, 180.00, 8, 3, 2, 'Deluxe House', 'Scenic hilltop views, Outdoor patio', NULL, 2, 'Wi-Fi, Breakfast', 0),
('Garden House', 180, 160.00, 6, 3, 2, 'Standard House', 'Beautiful garden surroundings, BBQ area', NULL, 1, 'Wi-Fi, Breakfast', 0),
('Riverside House', 220, 200.00, 10, 3, 2, 'Luxury House', 'Riverside location, Private pool', NULL, 2, 'Wi-Fi, Breakfast', 0),
('City View Room', 50, 80.00, 2, 4, 3, 'Standard Room', 'City view, Mini-bar', NULL, NULL, 'Wi-Fi, Breakfast', 0),
('Garden View Room', 60, 90.00, 3, 4, 3, 'Deluxe Room', 'Garden view, Coffee maker', NULL, NULL, 'Wi-Fi, Breakfast', 0),
('Lakefront Room', 70, 100.00, 4, 4, 3, 'Executive Room', 'Lakefront view, Jacuzzi', NULL, NULL, 'Wi-Fi, Breakfast', 0);
SELECT 
    *
FROM
    facility;