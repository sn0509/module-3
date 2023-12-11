CREATE TABLE `mon_hoc` (
    ma_mh VARCHAR(20) PRIMARY KEY,
    ten_mh VARCHAR(50),
    ma_gv VARCHAR(20),
    FOREIGN KEY (ma_gv)
        REFERENCES `giao_vien` (ma_gv)
);