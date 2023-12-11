CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth VARCHAR(50) NOT NULL,
    id_card VARCHAR(12) NOT NULL,
    salary DOUBLE DEFAULT 0.0,
    phone_number VARCHAR(12),
    email VARCHAR(45),
    address VARCHAR(50),
    position_id INT,
    education_degree_id INT,
    division_id INT,
    user_name VARCHAR(255),
    is_delete BIT(1),
    FOREIGN KEY (position_id)
        REFERENCES position (id),
    FOREIGN KEY (education_degree_id)
        REFERENCES education_degree (id),
    FOREIGN KEY (division_id)
        REFERENCES division (id),
    FOREIGN KEY (user_name)
        REFERENCES `user` (user_name)
);

insert into employee(name,date_of_birth,id_card,salary,phone_number,email,address,position_id,education_degree_id,division_id,user_name,is_delete) values
('Trần Thị Ngọc Anh', '1987-08-12', '123456789', 15000000, '0912345678', 'ngocanh@example.com', '456 Lê Lợi, Hà Nội', 1, 1, 1, 'ngocanh87', 0),
('Lê Văn Minh', '1990-03-25', '987654321', 20000000, '0987654321', 'minhle@example.com', '789 Nguyễn Huệ, TP.Hồ Chí Minh', 2, 2, 1, 'minhle90', 0),
('Nguyễn Hồng Thắng', '1985-12-05', '567890123', 18000000, '0976543210', 'thangnguyen@example.com', '234 Trần Hưng Đạo, Đà Nẵng', 3, 1, 3, 'thangnguyen85', 0),
('Phan Thị Hoa', '1992-06-18', '321098765', 22000000, '0965432109', 'hoaphan@example.com', '567 Nguyễn Đình Chiểu, Nha Trang', 2, 2, 2, 'hoaphan92', 0),
('Lương Văn Tuấn', '1988-09-08', '876543210', 16000000, '0954321098', 'tuanluong@example.com', '890 Quang Trung, Cần Thơ', 1, 3, 1, 'tuanluong88', 0),
('Đỗ Thị Kim Anh', '1993-04-02', '109876543', 19000000, '0943210987', 'kimanh@example.com', '111 Lý Tự Trọng, Vũng Tàu', 3, 4, 2, 'kimanh93', 0),
('Nguyễn Thị Ngọc Hà', '1980-11-15', '234567890', 25000000, '0932109876', 'ngocha@example.com', '222 Điện Biên Phủ, Hải Phòng', 3, 4, 2, 'ngocha', 0),
('Trương Văn Đức', '1987-01-25', '890123456', 20000000, '0921098765', 'ductruong@example.com', '333 Võ Văn Tần, Quy Nhơn', 4, 4, 3, 'ductruong87', 0),
('Nguyễn Thị Thùy Trang', '1998-10-05', '456789012', 17000000, '0910987654', 'thuytrang@example.com', '444 Lê Văn Sỹ, Rạch Giá', 5, 4, 3, 'thuytrang', 0),
('Phan Văn Hải', '1983-05-20', '678901234', 23000000, '0909876543', 'vanhai@example.com', '555 CMT8, Hồ Chí Minh', 6, 4, 4, 'vanhai83', 0);

SELECT 
    *
FROM
   attach_facility;
   
set foreign_key_checks = 1;