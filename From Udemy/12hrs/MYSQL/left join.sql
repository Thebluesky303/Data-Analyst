
select *
from employees t1
left join customers t2
on t1.employeeNumber = t2.salesRepEmployeeNumber
where t2.customernumber is null
and jobTitle = 'sales rep';

select *
from customers t1
right join employees t2
on t1.salesRepEmployeeNumber = t2.employeeNumber;

select a.customerName, b.amount, b.paymentDate
from customers a
inner join payments b
on a.customerNumber = b.customerNumber
