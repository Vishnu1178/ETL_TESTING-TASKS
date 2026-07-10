-- DAY 5
-- 1 A company's HR department wants to know the total salary expense paid to all employees
every month.

create database ETL1;

use ETL1;

create table employee(EMPID int,EMPNAME VARCHAR(100),DEPARTMENT varchar(50),SALARY Decimal(10,2));

insert into employee(EMPID, EMPNAME, DEPARTMENT, SALARY) 
  values(1,'vishnu','IT',70000),(2,'raj','sales',80000),(3,'Mathi','HR',65000),(4,'mani','finance',45000),(5,'ram','IT',55000),(6,'vijay','HR',75000),(7,'ragav','IT',55000),(8,'prem','sales',45000),(9,'eby','ops',95000);
  
  select * from employee;
  Answer
  
  select sum(salary) from employee;
  
  --2 A training institute wants to calculate the average marks scored by all students in the SQL
course.

create table student(STUDENT_ID int, STUDENT_NAME varchar(100),COURSE varchar(50), MARKS Int);

insert into student(STUDENT_ID,STUDENT_NAME,COURSE,MARKS) values
(1,'vishnu','Snowflake',90),(2,'raj','DE',80),(3,'Mathi','QA',70),(4,'mani','DEVOPS',60),(5,'ram','DS',76),(6,'vijay','AWS',75),(7,'ragav','TESTING',55),(8,'prem','snowflake',88),(9,'eby','python',67),(10,'suresh','SQL',86);

select * from student;

ANSWER

select avg(marks) as AVERAGE_MARKS from student;

-- 3 An e-commerce company wants to identify the most expensive product and the least expensive
product available in its inventory.

Create table Product(PRODUCTID int,PRODUCTNAME varchar(100),CATEGORY varchar(50),PRICE decimal(10,2));

insert into product(PRODUCTID,PRODUCTNAME,PRICE,CATEGORY)values(1,'DELL',68000,'LAPTOP'),(2,'VIVO',25000,'Mobile'),
(3,'Preethi',2500,'Indusction'),(4,'IPHONE',100000,'Mobile'),(5,'VGUARD',5000,'STABILIZER'),(6,'LG',30000,'FRIDGE'),(7,'REDMI',45000,'TV'),(8,'ASUS',95000,'LAPTOP');

Select * from product;

ANSWER

select min(price) as LEASTEXPPRODCTS from product;
select max(price) as MOSTEXPProducts from product;

-- 4 A banking application needs to know how many customers have registered in the system.

create table customer(CUSTID int,CUSTNAME varchar(100),MOBILENO varchar(15), CITY varchar(50));

insert into customer(CUSTID,CUSTNAME,MOBILENO,CITY) values(101, 'Arun Kumar', '9876543210', 'Chennai'),
(102, 'Priya', '9876543211', 'Madurai'),
(103, 'Karthik', '9876543212', 'Coimbatore'),
(104, 'Divya', '9876543213', 'Salem'),
(105, 'Vignesh', '9876543214', 'Trichy'),
(106, 'Nisha', '9876543215', 'Erode'),
(107, 'Rahul', '9876543216', 'Tirunelveli'),
(108, 'Keerthana', '9876543217', 'Chennai'),
(109, 'Sathish', '9876543218', 'Madurai'),
(110, 'Anitha', '9876543219', 'Coimbatore'),
(111, 'Surya', '9876543220', 'Salem'),
(112, 'Meena', '9876543221', 'Trichy');

Select * from customer;

Answer

select count(CUSTID) from customer;

-- 5 The management team wants a salary summary dashboard that displays the following
information:

create table employee1(EMPID int,EMPNAME VARCHAR(100),DEPARTMENT varchar(50),SALARY Decimal(10,2));

insert into employee1(EMPID, EMPNAME, DEPARTMENT, SALARY) 
  values(1,'vishnu','IT',70000),(2,'raj','sales',80000),(3,'Mathi','HR',65000),(4,'mani','finance',45000),(5,'ram','IT',55000),(6,'vijay','HR',75000),(7,'ragav','IT',55000),(8,'prem','sales',45000),(9,'eby','ops',95000),(10,'jaya','IT',91000),(9,'suman','Finance',65877),(9,'sekar','HR',80000);
  
  select * from employee1;
  
  update employee1 set empid = 11 where salary = 65877;
  ANSWER
  select count(empid) as TotalNoOfEmployees,sum(salary) as Totalsalary,min(salary) as Lowsetsalary,max(salary) as Highestsalary,avg(salary) as Averagesalary from employee1;



