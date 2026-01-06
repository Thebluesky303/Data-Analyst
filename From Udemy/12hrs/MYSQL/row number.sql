with main_cte as
(select distinct
t3.customername,
t1.customernumber,
t1.ordernumber,
orderdate,
productcode,

row_number() over (partition by t3.customernumber order by orderdate) as purchase_number

from orders t1
join orderdetails t2 on t1.orderNumber = t2.orderNumber
join customers t3 on t1.customerNumber = t3.customerNumber
order by t3.customername
)
select *
from main_cte
where pruchase