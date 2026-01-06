select *, cast(paymentDate as datetime) as PaymentTime
from payments;

select customernumber,
paymentdate,
substring(paymentdate, 1,7) as month_key
from payments;
select customernumber,
paymentdate,
substring(paymentdate, 5,7) as month_day
from payments;

select *, substring(country, 1,2) as code
from customers;

select customernumber, concat(contactlastname,' ', contactfirstname) as contact_full_name
from customers