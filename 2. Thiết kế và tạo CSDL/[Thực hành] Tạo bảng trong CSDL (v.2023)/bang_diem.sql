CREATE TABLE bang_diem (
    ma_hs VARCHAR(20),
    ma_mh VARCHAR(20),
    diem_thi INT,
    ngay_kt DATETIME,
    PRIMARY KEY (ma_hs , ma_mh),
    FOREIGN KEY (ma_hs)
        REFERENCES hoc_sinh (ma_hs),
    FOREIGN KEY (ma_mh)
        REFERENCES mon_hoc (ma_mh)
);