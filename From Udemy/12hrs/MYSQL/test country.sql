select * from customers where contactLastName
<> "young";
select customerName, contactFirstName, contactLastName, phone, city
, country
from customers
where country = "usa" and contactFirstName ='julie';

select customerName, contactFirstName, contactLastName, phone, city
, country
from customers 
where country = 'norway'
or country = 'sweden'
or country;

select   * from customers where country = 'usa' and contactLastName = 'brown';

