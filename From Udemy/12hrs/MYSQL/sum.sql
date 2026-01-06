select paymentDate, sum(amount) as totalpayments
from payments
group by paymentDate
order by paymentDate desc;

select paymentDate , round(sum(amount),1) as TotalPayment
from payments
group by paymentDate;

select paymentDate, sum(amount) as totalPayment
from payments
group by paymentDate
having totalPayment > 50000
order by paymentDate