SELECT distinct
    customer.c_name, product.p_name
FROM
    order_detail
        INNER JOIN
    `order` ON order_detail.o_id = `order`.o_id
        INNER JOIN
    customer ON `order`.c_id = customer.c_id
        INNER JOIN
    product ON order_detail.p_id = product.p_id