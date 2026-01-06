select avg(orders)
from
(select orderdate, count(ordernumber) orders
from orders 
group by orderdate)  t1
where orderDate > '2005-05-01'