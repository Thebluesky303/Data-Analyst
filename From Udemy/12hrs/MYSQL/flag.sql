
select t1.orderNumber, orderDate, quantityOrdered, productname, produntline,

case when quantityorderd > 40 and productline = 'Motorcycles' then 1 else 0 end as ordered_over_40_motorcycles

from classicmodels.orders t1
join classicmodels.orderdetails t2 on t1.orderNumber = t2.orderNumber
join classicmodels.products t3 on t2.productCode = t3.productCode
;

select *, case when comments like '%negotiate%' then 1 else 0 end as negotioated
from orders;

select *, case when comments like'%dispute%' then 1 else 0 end as disputed
from orders
 