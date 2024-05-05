
select country_t.code,country_t.cntry_name
from country_t
left join customer_t on country_t.code=customer_t.cust_country
where customer_t.cust_country is null


select country_t.code,country_t.cntry_name
from country_t
left join product_t on country_t.code=product_t.cntry_origin
where product_t.cntry_origin is null