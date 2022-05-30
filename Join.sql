select* from orders
drop table orders

create table orders
(
orderid int primary key,
orderno int,
productname varchar(20),
personID int,
price numeric(10,2),
constraint fk_orders_person foreign key(personID) references Person(personID)
)
select * from Person
select* from orders
insert into orders values(1,1001,'Keyboard',1,600)
insert into orders values(2,1002,'mouse',1,300)
insert into orders values(3,1003,'cable',2,400)
insert into orders values(4,1004,'Keyboard',3,600)
insert into orders values(5,1005,'mouse',4,300)
insert into orders values(6,1006,'cable',5,400)
insert into orders values(7,1007,'Keyboard',6,600)
insert into orders values(8,1008,'mouse',8,300)
insert into orders values(9,1009,'cable',12,400)
insert into orders values(10,1010,'Keyboard',9,600)
insert into orders values(11,1011,'mouse',7,300)
insert into orders values(12,1010,'cable',6,400)
---Inner Join
select p.name,p.country,p.age,o.orderid,o.orderno,o.price,o.productname
from person p 
inner join orders o on p.personid=o.personid
where p.personId=6
---left Join
select p.name,p.country,p.age,o.orderid,o.orderno,o.price,o.productname
from person p 
left join orders o on p.personid=o.personid

---Right Join
select p.name,p.country,p.age,o.orderid,o.orderno,o.price,o.productname
from person p 
right join orders o on p.personid=o.personid

---full Join
select p.name,p.country,p.age,o.orderid,o.orderno,o.price,o.productname
from person p 
full join orders o on p.personid=o.personid

create table manager
( id int primary key,
name varchar(20)
)
select * from employee1
alter table employee1 add managerid int
update employee1 set managerid=1 where emp_ID in(2,3,4)
update employee1 set managerid=5 where emp_ID in(6,7,8)
update employee1 set managerid=9 where emp_ID in(10,11)
---self join
select e1.first_name as emp_name,e2.first_name as manager
from Employee1 e1,Employee1 e2
where e1.managerid=e2.emp_ID

create table study(
studId varchar(5),
courseId varchar(5),
year int
)
insert into study values('s1','c1',2016)
insert into study values('s2','c2',2017)
insert into study values('s1','c1',2017)
update study set courseId='c2' where studId='s1' and year=2017
-- find the student id, year who enroll for different course 
select * from study
select sa.studId,sa.courseId,sa.year
from study sa,study sb
where  sa.studId=sb.studId and sa.courseId<>sb.courseId 

select* from Employee1
alter table employee1 drop column deptName
create table Department
(
deptid int primary key,
dname varchar(30)
)
insert into Department values(001,'sales')
insert into Department values(002,'HR')
insert into Department values(003,'BA')
insert into Department values(004,'IT')
select * from Department
alter table employee1 add  deptid int
alter table employee1 add constraint fk_deptid1 foreign key(deptid) references Department(deptid) 
update Employee1 set deptid=1 where emp_ID in(1,3,4,7)
update Employee1 set deptid=2 where emp_ID in(2,5,8)
update Employee1 set deptid=3 where emp_ID in(6,11)
update Employee1 set deptid=4 where emp_ID in(9,10)
--Display employee who works in their dept using inner join
select e.emp_ID,e.first_name,e.last_name,e.salary,d.deptid,d.dname 
from employee1 e inner join Department d on e.deptid=d.deptid

--display Employee  and department who works in HR dept
select e.emp_ID,e.first_name,e.last_name,e.salary,d.deptid,d.dname
from employee1 e inner join Department d on e.deptid=d.deptid
where d.dname='HR' 
--display Employee  in sales dept assending order of Name
select e.emp_ID,e.first_name,e.last_name,e.salary,d.deptid,d.dname
from employee1 e inner join Department d on e.deptid=d.deptid
where d.dname='sales'  order by (first_name)
--display Employee  in HR dept desending order of Salary
select e.emp_ID,e.first_name,e.last_name,e.salary,d.deptid,d.dname
from employee1 e inner join Department d on e.deptid=d.deptid
where d.dname='HR'  order by (salary) desc
--display Employee & dept assending order of name and Salary
select e.emp_ID,e.first_name,e.last_name,e.salary,d.deptid,d.dname
from employee1 e inner join Department d on e.deptid=d.deptid
 order by e.first_name,e.salary 