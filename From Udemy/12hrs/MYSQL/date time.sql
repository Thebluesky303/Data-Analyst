select a.orderNumber, requiredDate, orderDate,
datediff(requiredDate,orderdate) days_untill_required
from orders a;

select a.orderNumber, requiredDate, orderDate,
datediff(now(),orderdate)/365 years_untill_required
from orders a;

select now();

select *, date_add(orderDate,interval 1 year) as one_year_after,
date_sub(orderdate, interval 2 month) as two_month_ago
from orders

