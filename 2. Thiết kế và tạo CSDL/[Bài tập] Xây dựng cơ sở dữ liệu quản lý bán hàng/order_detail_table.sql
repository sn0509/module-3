CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    od_qty INT,
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);