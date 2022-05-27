create table Employee1
( emp_ID int primary key identity(1,1),
first_name varchar(20),
last_name varchar(20),
city varchar(30),
salary numeric(10,2),
deptName varchar(30),
)
drop table Employee1
insert into Employee1 values('Neha','Patil','pune',35000,'sales')
insert into Employee1 values('Prajkta','Pawar','Mumbai',28000,'HR')
insert into Employee1 values('Samrudhi','Mane','Pune',42000,'sales')
insert into Employee1 values('Ashwini','Kulkarni','pune',54000,'Markating')
insert into Employee1 values('Sagar','jadhav','Mumbai',63000,'HR')
insert into Employee1 values('Manav','Biradar','Nashik',30000,'sales')
insert into Employee1 values('Pratik','Patil','Delhi',27000,'HR')
insert into Employee1 values('Nishant','Pawar','Hydrabad',29000,'Markating')
insert into Employee1 values('Anvee','Patil','Hydrabad',46000,'IT')
insert into Employee1 values('Ashish','More','Kolkata',33000,'IT')
insert into Employee1 values('Tajas','More','Hydrabad',41000,'IT')
--1. display all employess from table
select * from Employee1
--2. display emp who work in sales department
select * from Employee1 where deptName='sales'
-- 3. display emp who's salary is greater than 35000
select *from Employee1 where salary>35000
--4. display emp who belong to pune & mumbai city
select * from Employee1 where city in ('Pune','Mumbai')
-- 5. display emp who's salary is in between 25,000 - 30,000
select * from Employee1 where salary between 25000 and 30000
-- 6. display emp name who's name start with 'T'
select * from Employee1 where first_name like 't%'
--7. display emp name who's name end with 'A'
select * from Employee1 where first_name like '%a'
--8. display unique department from emp table
select distinct deptName from Employee1
--9. display emp those are not working in hr & sales dept
select * from Employee1 where deptName not in('Hr','sales')
--10.Write a query to get all employee details from employee table display in assending order
select * from Employee1 order  by Salary 
--11.Write a query to get all employee details from employee table display in descending order
select * from employee1 order by first_name desc
--12.Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee table
select first_name as 'First Name',last_name as'Last Name' from employee1
--13.Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column
select first_name,salary, salary=(salary*.12) from employee1
--14.Write a query to get max and min salary of employee
select max(salary)as Max_salary, min(salary)as Min_salary from employee1
--15.Write a query to get total salaries payable to all employees from employee table
select sum(salary)as TotalPayable from employee1
--16.Write a query to get number of employees are working in company
select count(emp_ID) from employee1
--17.Write a query to display emp_name as ‘Name’ in upper case
select upper( first_name) as  Name from employee1
--18.Write a query to get first 10 records from the employee table
select Top 10 * from Employee1

