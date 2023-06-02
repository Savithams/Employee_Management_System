create database dxcdbms;
show databases;
use dxcdbms;
create table employee(eid int,ename varchar(50),age int);

desc employee;

insert into employee values(1,'Savitha',23);
insert into employee values(2,'Sandesh',20),(3,'Rakshith',22);
insert into employee(eid,ename,age) values(4,'Sai',21);
insert into employee(ename,age) value('Shruthi',30);

select * from employee;
select eid EmployeeID,ename EmployeeName,age EmployeeAge from employee;

select eid "Employee ID",ename "Employee Name",age "Employee Age" from employee;

select eid as "Employee ID",ename as "Employee Name",age as "Employee Age" from employee;

select * from employee where age>30;

select * from employee where age>20 and age<40;

select age from employee;
insert into employee values(6,'shami',15);

select age from employee;

select distinct age from employee;
drop table employee;
select * from employee;
create table employee1(id int primary key,name varchar(40),age int,salary numeric);
alter table employee1
add column city varchar(20);
desc employee1;
alter table employee1
drop column city;

desc employee1;
insert into employee1 values(1,'ashu',22,250000000),(2,'surya',23,234567);
select * from employee1;
SET SQL_SAFE_UPDATES = 0;
delete from employee1 where age=22;
delete from employee1 where age=23;
truncate table employee1;
drop table employee1;
show tables;

use dxcdbms;
create table employees(id int primary key,name varchar(40),age int,salary numeric);
insert into employees values(1,'Savitha',20,2000000),(2,'shami',21,2345),(3,'Vijay',34,5678),
(4,'Ashu',45,23876),(5,'Sonu',12,0);
select * from employees;
select count(*) from employees;
create table employees_copy(id int primary key,name varchar(40),age int,salary numeric);

select * from employees_copy;
insert into employees_copy
select * from employees;
select * from employees_copy;
drop table employees_copy;
update employees set salary=1234,age=18 where id=5;
delete from employees where id=5;
create table emp(id int,name varchar(40) not null,age int);
insert into emp values(1,'Savitha',20);

insert into emp values(2,null,40);
create table student(id int primary key,name varchar(40),age int,email varchar(60) unique);
insert into student values(1,'Savitha',23,'saviths0330@gmail.com');
--This will be not inserted
insert into student values(2,'Ajay',15,'savitha0330@gmail.com');
drop table student;

create table person(id int not null,name varchar(40) not null,age int,
city varchar(15) default 'delhi');
insert into person(id,name,age) values(1,'Savitha',23),(2,'Jay',39);
select * from person;
insert into person values(3,'Akash',21,'Ahmedabad');
drop table person;
create table persons(id int primary key,name varchar(40),age int);
insert into persons values(1,'Savitha',19);

insert into persons values(1,'Savitha',19);
insert into persons values(2,'Raj',49);
alter table persons drop primary key;
insert into persons values(1,'Rakesh',49);
drop table persons;
create table animal(id int primary key auto_increment,name varchar(40));
insert into animal(name) values('Cow'),('Dog'),('Cat');
select * from animal;
drop table animal;
create table persons(p_id int primary key,name varchar(50) not null,age int,city varchar(25));
insert into persons values(1,'Savitha',19,'Delhi'),(2,'Ajay',29,'Bangalore');
select * from persons;
update persons set name='MS' where p_id=2;
create table orders(o_id int primary key,o_num int not null,p_id int,foreign key(p_id) 
references persons(p_id));
insert into orders values(1,101,20);
select * from orders;
drop table orders;
drop table persons;
create table customers(country varchar(40),state varchar(40));
insert into customers values('USA','NA'),('USA','NY'),('UK','Britain'),('UK','London');
insert into customers values('japan','Tokyo');
select * from customers;
select country,count(state) from customers group by country;
insert into customers values('USA',null);
select country,count(state) from customers where state is not null group by country 
having count(country)>1;
select * from employees order by name;
select * from employees order by name asc;
select * from employees order by name desc;
create table officers(officer_id int primary key,officer_name varchar(50),address varchar(50));
insert into officers values(1,'Ajeet','Mau'),(2,'Deepika','Lucknow'),(3,'Vimal','Faizabad'),
(4,'Rahul','Lucknow');

create table students(student_id int primary key,student_name varchar(40),course_name varchar(40));

insert into students values(1,'Aryan','java'),(2,'Rohini','Hadoop'),(3,'Shiva','MySQL'),
(5,'XYZ','DotNet');
select o.officer_name,o.address,s.course_name
from officers o
inner join students s
on o.officer_id=s.student_id;
select o.officer_name,o.address,s.course_name
from officers o
right join students s
on o.officer_id=s.student_id;
select o.officer_name,o.address,s.course_name
from officers o
left join students s
on o.officer_id=s.student_id;
create table customer(cid int primary key,cname varchar(40),cmanager int);

insert into customer values(1,'Rakesh',2),(2,'Raj',3),(3,'Ravi',4);
update customer set cname='Savita' where cid=1;
select * from customer;

select a.cid,a.cname,b.cname manager
from customer a
inner join customer b
on a.cmanager=b.cid
order by a.cid;

create table STUDENT(id int primary key auto_increment,FIRST_NAME varchar(50) not null,LAST_NAME varchar(20));
select * from student;
drop table student;
create table STUDENT(id int primary key auto_increment,FIRST_NAME varchar(50) not null,LAST_NAME varchar(20),SECTION varchar(50) not null);
select * from student;
create table Emply(EmployeeId int primary key auto_increment,EMPLOYEE_NAME varchar(50) not null,EMPLOYEE_AGE varchar(20),EMPLOYEE_SALARY varchar(50) not null);
select * from Emply;















































