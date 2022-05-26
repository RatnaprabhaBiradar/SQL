use Prorigo
-----foreign key
create table orders
(
orderid int,
orderno int,
personID int,
constraint pk_orders primary key (orderid),
constraint fk_orders_person foreign key(personID) references Person(personID)
)
alter table orders add cfees int
alter table orders add cid int

alter table orders alter column cfees int not null
alter table orders add constraint fk_orders_course1 foreign key(cid) references course1(cid)
alter table orders drop constraint fk_orders_course1
alter table orders add constraint fk_orders_course1 foreign key(cid,cfees) references course1(cid,cfees)
select * from Person
alter table Person add age int not null
alter table Person add constraint ck_person check(age>18)
alter table person drop constraint ck_person
alter table person add country varchar(20)
--if column is already there and want to add default constraint
alter table person add constraint def_person default 'india'for country
-- table is already exist and want to add colum with default value
alter table person add country varchar(20) default 'india'
create index index_person on Person(name)
--if we want to add index on primary ket then
create unique index index_person1 on Person(personID)
---To drop a constraint 
drop index index_person1
----creating identity
create table person
(
personId int primary key identity(1,1)
)
alter table person add personId int identity(1,1)
--to delete table records
truncate table person
---to delete table with schema
drop table Person
sp_help orders