create database Practice
use Practice

create table employee(emp_id int primary key,emp_name varchar(20),emp_city varchar(10))


insert into employee values(4,'abraar','salem')

create table department(dept_id int primary key,dept_name varchar(10),emp_id int ,foreign key(emp_id) references employee(emp_id))

select * from department
select * from employee
delete from employee where emp_id=2


insert into department values(102,'Hr',2,2000)

alter table department add emp_salary decimal

update department set emp_salary=1000.00 where dept_id=101


select emp_salary as salary from department where emp_id in (select emp_id from employee where emp_name='abraar')


select * from employee inner join department on employee.emp_id=department.emp_id where department.emp_salary=1000

select count(emp_id),emp_name as number_of_employee from employee group by emp_name
