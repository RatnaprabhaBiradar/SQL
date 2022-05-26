--DML command

insert into person values(1,'seema','asdf',56785432,19,'USA')
insert into person values(2,'Neha','drfg',58963148,20,'UK')
insert into person values(3,'Prajkta','drfg',58967848,20,'India')
update person set age=25 where personId=2
select * from Person
insert into person(personId,name,personAddress,mobileno,age) values (4,'Maya','dhghsgd',89642368,22)
insert into person(personId,name,personAddress,mobileno,age) values (5,'Rutuja','Pune',89644568,22)
insert into person(personId,name,personAddress,mobileno,age) values (6,'Hemant','Pune',887944568,28)
insert into person(personId,name,personAddress,mobileno,age) values (7,'shruti','Mumbai',963644568,29)
update person set personAddress='Mumbai' where personId=1
update person set personAddress='Mumbai' where personId=2
update person set personAddress='hydrabad' where personId=3
update person set personAddress='Aurangabad' where personId=4
insert into person(personId,name,personAddress,mobileno,age) values (8,'Poonam','Pune',96896368,28)
insert into person values(9,'Nilesh','Nashik',58968748,20,'USA')
insert into person values(10,'smita','nagpur',58963147,27,'India')
update person set personAddress='Dallas' where personId=9
update person set personAddress='Plano' where personId=1
update person set personAddress='Landon' where personId=2
delete from person where personId=9
insert into person values(11,'aditi','nagpur',58263147,27,null)
insert into person values(12,'shashi','Delhi',58263127,27,null)










