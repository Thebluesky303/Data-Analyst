select
case when creditlimit < 75000 then 'a: less then $75k'
when creditlimit between 75000 and 100000 then 'b: $75k - 100k'
when creditlimit between 100000 and 150000 then 'c: 100k - 150k'
when creditlimit > 150000 then 'd: over 150k'
else 'Other' end as credit_limit_grp,
count(distinct c.customerNumber) as customers
from classicmodels.customers c
group by credit_limit_grp