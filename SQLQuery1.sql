sp_help person
create table Person(
personId int  ,
personName varchar(20) ,
mobileno int ,
personAddress varchar(50),
age int check(age>18),---check constrain
country varchar(20) default 'india'
)
select * from Person;

alter table Person alter column PersonID INT NOT NULL
alter table Person add constraint pk_person primary key(personID)
alter table person add mobileno int
alter table person drop column mobileno
alter table person add city varchar(20)
alter table person drop column city-- to drop column
alter table person alter column personName varchar(40)--to modify column
sp_rename 'person.personname','name'--to rename column name 
alter table person alter column name varchar(40) not null--after creating table to apply constrain
alter table person add constraint un_person unique(mobileno)
alter table person add constraint pk_personID primary key(personId)---giving error
alter table person drop constraint pk_personID 

create table course(
courceId int primary key,
courceName varchar(20) not null,
mobileno int unique,
ovrview varchar(50) default 'all syllabus',
cdays int check(cdays>10),---check constrain
)
create table course1
( cid int,
cname varchar(20),
cfees int,
cduration varchar(20),
constraint pk_course1 primary key (cid,cfees)

)
sp_help course1
alter table course1 drop constraint pk_course1
alter table course1 add constraint pk_course2 primary key(cid)
alter table course1 drop constraint pk_course2
alter table course1 add constraint pk_course1 primary key(cid,cfees)

