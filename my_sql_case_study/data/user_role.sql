CREATE TABLE user_role (
    role_id INT,
    user_name VARCHAR(255),
    is_delete BIT(1) DEFAULT 0,
    PRIMARY KEY (role_id , user_name),
    FOREIGN KEY (role_id)
        REFERENCES `role` (role_id),
    FOREIGN KEY (user_name)
        REFERENCES `user` (user_name)
);
insert into user_role(role_id,user_name) values 
	(1,'ductruong87'),
    (1,'hoaphan92'),
    (1,'kimanh93'),
    (1,'minhle90'),
    (1,'ngocanh87'),
    (1,'ngocha'),
    (1,'thangnguyen85'),
    (1,'thuytrang'),
    (1,'tuanluong88'),
    (2,'vanhai83');

set foreign_key_checks = 1;