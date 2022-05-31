select first_name, salary from employee1 where salary=(select max(salary) from employee1)

-- 2nd highest 

select first_name,salary from employee1 where salary=(
select max(salary) from employee1 where salary<>(select max(salary) from employee1)
)

--3rd highest salary
create view highestsalary_3 as
select first_name,salary from employee1 where salary=(
select max(salary) from Employee1 where salary<(
select max(salary) from Employee1 where salary<>(select max(salary) from Employee1)
)
)
select * from   highestsalary_3  
select * from Employee1 where emp_ID in
(select emp_ID from employee1 where salary<30000)
select * from person
select * from orders
---display person name who has
select p.name, o.price
from Person p inner join  orders o  on p.personId=o.personID
where price>500
--- display the name of employee who take higher salary than employee having id 4
select first_name,salary from employee1 where salary>(select salary from Employee1 where emp_ID=4)
---disply employee details whose city is same as id=4
select first_name,city from employee1 where city=(select city from employee1 where emp_ID=4)
---display emp details whose salary is greater than avg salary of all emp
select first_name,city,salary from Employee1 where salary>(select avg(salary) from employee1)
--find emp whose salary is greater than avg salary of any dept
select first_name,salary,deptid
from Employee1 where salary>all(select avg(salary) from Employee1 group by deptid)
---display the sum of salary dept wise
select deptid, sum(salary)as sumsal from Employee1 group by deptid
--- display emp who get more salary then avg salary  of sales dept
select first_name from employee1 where salary>(select avg(salary) from employee1 where
deptid=(select deptid from Department where dname='sales'))

select * from Department

---update with sub queary
----
update employee1 set salary=salary*.30 where deptid=(select deptid from Department where dname='HR') 
select * from Employee1
delete from Employee1 where deptid=(select deptid from Department where dname='HR') 
