/* Question */
select t2.contactfirstname, t2.contactlastname, t1.orderdate, t1.status
from orders t1
inner join customers t2
on t1.customerNumber = t2.customerNumber;

/* Question 2 */
select t2.contactfirstname, t2.contactlastname, t1.orderdate, t1.status
from customers t1
left join orders t2
on t1.customerNumber = t2.customerNumber
where t2.orderNumber is not null
