CREATE TABLE `user` (
    user_name VARCHAR(255) primary key,
    password VARCHAR(255),
    is_delete BIT(1) default 0
);

insert into `user` (user_name,password) values
('ngocanh87', 'SecurePass1'),
('minhle90', 'StrongPass2'),
('thangnguyen85', 'RandomPass3'),
('hoaphan92', 'SafePass4'),
('tuanluong88', 'SecretPass5'),
('kimanh93', 'SuperPass6'),
('ngocha', 'AwesomePass7'),
('ductruong87', 'AmazingPass8'),
('thuytrang', 'FantasticPass9'),
('vanhai83', 'ExcellentPass10');

SELECT 
    *
FROM
    `user`;