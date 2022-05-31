---Build in functions
update Employee1 set salary=34854.99 where emp_ID=1
select* from Employee1
select first_name,SUBSTRING(first_name,0,3) from Employee1
select first_name, REVERSE(first_name)from Employee1
select CONCAT(first_name,' ',last_name) from Employee1
select first_name,len(first_name) from Employee1
select first_name,upper(first_name) from Employee1
select first_name,lower(first_name) from Employee1
select ROUND(salary,0) as salary from Employee1 where emp_ID=1 
select CAST(salary as int) from Employee1
select salary, RANK() over (order by salary) as ranksal from Employee1
select REPLACE('c# notes','c#','sql')
select REPLACE(first_name,'a','z')as replacedname from Employee1
