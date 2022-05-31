create table dept
(
did int,
dname varchar(20)
)
create procedure sp_Insert_Dept(@did int ,@dname varchar(20))
as begin
insert into dept values(@did,@dname)
return
end
create procedure sp_select_Dept
as begin
select* from dept
return
end
alter procedure sp_select_Dept
as begin
select* from dept
return
end
exec sp_Insert_Dept
@did=1,
@dname='HR'
exec sp_select_Dept
create procedure sp_update_dept(@did int,@dname varchar(20))
as begin
update dept set dname=@dname where did=@did
return 
end
exec sp_update_dept
@did=1,
@dname='sales'