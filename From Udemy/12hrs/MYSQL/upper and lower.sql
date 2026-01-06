select * 
from employees
where lower(firstName)='leslie';
select * 
from employees
where upper(email) = 'DMURPHY@CLASSICMODELCARS.COM';
select *, upper(firstName) as uppercasename
from employees
