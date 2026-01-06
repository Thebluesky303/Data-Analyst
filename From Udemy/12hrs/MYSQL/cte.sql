with cte_orders as
(select orderdate, count(ordernumber) orders
from orders
group by orderdate),
cte_payments as
(select * 
from payments)


select avg(orders)
from cte_orders

where orderdate > '2005-05-01'