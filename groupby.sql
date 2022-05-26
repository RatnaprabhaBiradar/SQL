---Group by
---Group by clause mut be used with agrigate function
select * from employee1
select deptName,count(emp_ID)as emp_count from employee1
group by deptName
select city,count(emp_ID)as emp_count from Employee1 group by city