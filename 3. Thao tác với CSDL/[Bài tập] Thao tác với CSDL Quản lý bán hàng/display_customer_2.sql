select * from customer
where not exists (
	select 1
    from `order`
    where `order`.c_id = customer.c_id
    );