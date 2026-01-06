select customerName, count(orderNumber) as orders
from orders t1
inner join customers t2
on t1.customerNumber = t2.customerNumber
group by customerName
order by orders
limit 2;

select customerName, min(orderDate) as first_orderdate, max(orderDate) as latest_orderdate
from orders t1
inner join customers t2
on t1.customerNumber = t2.customerNumber
group by customerName;

