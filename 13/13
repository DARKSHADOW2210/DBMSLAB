create table employee1(emp_id int primary key,emp_name varchar(20),salary int,mobile_no int,dept char(8));

delimiter //

create trigger b_inc
before insert on employee1
for each row
begin
set new.salary=new.salary+100;
end //

delimiter ;

insert into employee1 values(101,'deepak',105100,7898032,'cse');

select * from employee1;
