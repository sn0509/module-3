create database quan_ly_sinh_vien;

use quan_ly_sinh_vien;

alter table `student` add constraint fk_class_id foreign key(class_id) references class(class_id);