select * 
from employees
where upper(email)  in
( 'dmurphy@classicmodelcars.com',
'mpatterso@classicmodelcars.com'
)