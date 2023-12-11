CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_type_id INT,
    name VARCHAR(50) NOT NULL,
    gender BIT(1) NOT NULL,
    date_of_birth VARCHAR(50) NOT NULL,
    id_card VARCHAR(12) NOT NULL,
    phone_number VARCHAR(12) NOT NULL,
    email VARCHAR(45),
    address VARCHAR(50),
    is_delete BIT(1),
    FOREIGN KEY (customer_type_id)
        REFERENCES customer_type (id)
);

insert into customer(name,gender,date_of_birth,id_card,phone_number,email,address,is_delete) values 
('Hồ Văn An', 1, '1990-05-15', '123456789', '0901234567', 'hovan_an@example.com', '123 Nguyễn Huệ, TP.Hồ Chí Minh', 0),
('Trần Thị Bích Ngọc', 0, '1985-09-20', '987654321', '0912345678', 'tranbichngoc@example.com', '456 Lê Lợi, Hà Nội', 0),
('Phạm Văn Cường', 1, '1992-12-10', '567890123', '0987654321', 'phamvancuong@example.com', '789 Trần Hưng Đạo, Đà Nẵng', 0),
('Lê Thị Diệu Linh', 0, '1988-03-25', '321098765', '0976543210', 'lethidieulinh@example.com', '234 Nguyễn Trãi, Huế', 0),
('Võ Văn Đức', 1, '1995-07-08', '876543210', '0965432109', 'vovanduc@example.com', '567 Nguyễn Đình Chiểu, Nha Trang', 0),
('Đỗ Thị Phương Thảo', 0, '1993-11-02', '109876543', '0954321098', 'dophuongthao@example.com', '890 Quang Trung, Cần Thơ', 0),
('Nguyễn Văn Giang', 1, '1980-06-18', '234567890', '0943210987', 'nguyenvang@example.com', '111 Lý Tự Trọng, Vũng Tàu', 0),
('Trần Văn Hòa', 1, '1987-02-14', '890123456', '0932109876', 'tranvanhoa@example.com', '222 Điện Biên Phủ, Hải Phòng', 0),
('Lê Thị Ánh Ngọc', 0, '1998-09-05', '456789012', '0921098765', 'lethianhngoc@example.com', '333 Võ Văn Tần, Quy Nhơn', 0),
('Phạm Văn Khánh', 1, '1983-04-30', '678901234', '0910987654', 'phamvankhanh@example.com', '444 Lê Văn Sỹ, Rạch Giá', 0);

SELECT 
    *
FROM
   customer;