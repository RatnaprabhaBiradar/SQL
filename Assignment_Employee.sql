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

select * from Employee1
select * from Employee1 where deptName='sales'
select *from Employee1 where salary>35000
select * from Employee1 where city in ('Pune','Mumbai')
select * from Employee1 where salary between 25000 and 30000
select * from Employee1 where first_name like 't%'
select * from Employee1 where first_name like '%a'
select distinct deptName from Employee1
select * from Employee1 where deptName not in('Hr','sales')
select * from Employee1 order  by Salary 
select * from employee1 order by first_name desc



