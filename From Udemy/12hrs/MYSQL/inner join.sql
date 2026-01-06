select *
from orders t1
inner join customers t2
on t1.customerNumber = t2.customerNumber
where t1.customerNumber = 363;

select * 
from orders
where orderNumber = 10100;
select *
from customers
where customerNumber= 363;


