select* from customer
create table supplyer
(
supplu_Id int primary key,
city varchar(20),
country varchar(20)
)
select* from employee1
sp_help customer
select * from Department

select deptid,count(emp_ID)as empno from Employee1
group by deptid
having deptid in(1,2)
order by count(emp_ID)

select country, count(personid) as personcount from person
group by country
having country in('india','usa')
order by count(personid)
