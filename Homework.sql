create table customer
(
custId int primary key identity(1,1),
city varchar(20),
country varchar(20),
postalcode numeric(20)
)
drop  table customer
insert into customer values('London','UK',120121)
insert into customer values('Mumbai','India',400001)
insert into customer values('Berlin','Germany',100115)
insert into customer values('Berlin','Germany',121110)
insert into customer values('London','UK',127894)
insert into customer values('London','UK',120122)
insert into customer values('Berlin','Germany',121112)
insert into customer values('dallas','USA',75026)
insert into customer values('Plano','USA',68208)
insert into customer values('Pune','India',411028)
insert into customer values('Albama','USA',75221)
insert into customer values('Delhi','India',110094)
insert into customer values('London','UK',120148)
insert into customer values('Mumbai','India',400002)
insert into customer values('Berlin','Germany',100215)
insert into customer values('Berlin','Germany',123110)
insert into customer values('florida','USA',132894)
insert into customer values('Kolkata','India',458122)
insert into customer values('Berlin','Germany',121522)
insert into customer values('New orlience','USA',758226)
insert into customer values('Frisco','USA',68228)
insert into customer values('Noida','India',41128)
insert into customer values('Goa','India',11004)

select * from customer
--1.Write a statement that will select the City column from the Customers table
select city from customer
--2.Select all the different values from the Country column in the Customers table.
select distinct country from customer
--3.Select all records where the City column has the value "London
select * from customer where city='London'
--4.Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where city not in('Berlin')
--5.Select all records where the CustomerID column has the value 23.
select * from customer where custId=23
--6.Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customer where city='Berlin' and postalcode=121110
--7.Select all records where the City column has the value 'Berlin' or 'London'.
select * from customer where city='berlin' or city='london'
--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer order by city
--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer order by city desc
--10.lect all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer order by country,city
--11.Select all records from the Customers where the PostalCode column is empty.
Select all records from the Customers where the PostalCode column is empty.
select * from customer where postalcode is null
--12.Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where postalcode is not null
--13.Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city='Olas' where country='Norway'
--14.Delete all the records from the Customers table where the Country value is 'Norway'.
delete  from customer where country='Norway'
--20.Select all records where the value of the City column starts with the letter "a".
select * from customer where city like 'a%'
--21.Select all records where the value of the City column ends with the letter "a".
select * from customer where city like '%a'
--22.Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'
--23.Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customer where city like 'a%b'
--24.Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like'a%'
--26.Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customer where city like 'a%' or city like 'c%' or city like 's%'
--27.Select all records where the first letter of the City starts with anything from an "a" to an "f"
select * from customer where city like '[a-f]%'
--28.Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city not like'a%' or  'c%' or  'f%'
--29.Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer where city in('Norway','France')
--30.Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer where city not in('Norway','France')
--34.When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select postalcode as pno from customer
--35.When displaying the Customers table, refer to the table as Consumers instead of Customers.
--36.List the number of customers in each country.
select country,count(custId)as customers from customer group by country 
--37.List the number of customers in each country, ordered by the country with the most customers first.
select country,count(custId)as customers from customer group by country order by customers desc
--38.Write the correct SQL statement to create a new database called testDB.
create database testDB
--39.Write the correct SQL statement to delete a database named testDB
drop database testDB
--40.Add a column of type DATE called Birthday in Persons table
alter table person add birthday date
--41.Delete the column Birthday from the Persons table
alter table person drop column birthday


create table product
(
prod_Id int primary key identity(1,1),
prod_name varchar(20),
price numeric(10,2)
)
insert into product values('AC',25)
insert into product values('Pen',28)
insert into product values('Book',85)
insert into product values('AC',29)
insert into product values('Pen',45)
insert into product values('lap cover',63)
insert into product values('AC',54)
insert into product values('Pen',72)
insert into product values('mobcover',20)
insert into product values('clip',20)
insert into product values('Pen',35)
insert into product values('AC',22)
--15.Use the MIN function to select the record with the smallest value of the Price column.
select min(price) from product
--16.Use an SQL function to select the record with the highest value of the Price column.
select max(price) from product
--17.Use the correct function to return the number of records that have the Price value set to 20
select * from product where price=20
--18.Use an SQL function to calculate the average price of all products
select avg(price) from product
--19.Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) from product
--31.Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from Product where price between 10 and 20
--32.Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from Product where price  not between 10 and 20
--33.Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from Product where prod_name  between 'G' and 'p'
