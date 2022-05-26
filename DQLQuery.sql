---DQL Query
select * from Person
select name,age from Person
select * from person where age>20
select * from Person where personId<4
select * from person where age>=20
select * from Person where personId<=4
select * from person where age>20
select * from Person where personId<>4
select * from Person where personId=10
select distinct country from Person
select * from Person where age between 23 and 27
----in operator select the multiple possible values
select * from person where personId in(1,2,3)
select * from person where country in('USA','UK')
------- not in select the possible values which are not in
select * from person where personId not in(1,4,3)
select * from person where country not in('india')
select * from Person where country='USA' and age<27
select *from Person where country='UK' or age<22
select * from Person where not country='UK'
----like operator in sql
select *from Person where name like 's%'--name starts with s
select * from person where name like'%a'--- name ends with a
select * from person where name like'%i%'---contains i in the name
select * from person where name like '___a'
select * from person where name like 's____'--exact match latters with s having 4 more latters
select * from  person where name like'[sp]%'-- name starting with latter s or p
select * from  person where name like'[a-j]%'-- name starting with latter betn a to j
----- is null and is not null
select *from Person where country is null
select * from Person where country is not null

--- alise
select name as personName from Person

------------ order by
select * from Person order by name ---for assending order
select * from person order by name desc ---retrive data in desending order