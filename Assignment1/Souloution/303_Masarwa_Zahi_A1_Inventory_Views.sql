
--print all the citys in canada
CREATE VIEW CanadaCitys_V AS
SELECT *
FROM City_T
WHERE cntry_code='CAN';

--view for porducts with no discount
CREATE VIEW Nodiscount_V AS
select * from Product_T
where prod_discount=0
