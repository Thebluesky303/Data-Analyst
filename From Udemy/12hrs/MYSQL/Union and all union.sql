select *
from customers;
select *
from employees;

select 'customer' as type, contactFirstName as fName, contactLastName as lName
from customers
union
select 'employee' as type, firstName , lastName
from employees

fg