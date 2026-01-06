select productCode,(orderLineNumber) as orders
from orderdetails;

select paymentDate, max(amount), min(amount)
from payments
group by paymentDate
having paymentDate = '2003-12-09';

select avg(amount) as average
from payments;



