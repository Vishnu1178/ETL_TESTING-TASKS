create database sqltest;

use sqltest;
-- SQL SCENARIO 1
-- DAY2--
1.Employee Directory Report

create table employee(empID int,empname varchar(40),Department varchar(20),salary varchar(50), City varchar(25));

Insert into employee(EMPID,Empname,Department,salary,City) values(101,'John','IT',50000,'chennai'),(102,'Mary','HR',35000,'banglore'),(103,'DAVID','Finance',60000,'Hyderabad'),(104,'Sam','IT',45000,'Chennai'),(105,'Priya','HR',40000,'Madurai');


The HR department wants a complete employee directory containing every column for all
employees.

Answer

Select * from employee;

2.Finance Salary Report

The Finance Manager needs a report showing only employee names and their salaries.

Answer

select Empname,Salary from employee;

3.Unique Department List

The Administration team wants to know how many different departments exist in the company
without repeating department names.

select distinct(department) from employee;

4.Unique Employee Cities

The company is planning new branch offices and wants a list of all unique cities where
employees are currently located.

select distinct(city) from employee;

5.Dashboard Preview Report

A dashboard should initially show only a small preview of employee records instead of loading
the entire table.

Answer

select * from employee limit 3;
---------------------------------------------------
--Day 3------

Create table employee1(EmpID int, EMPName varchar(20), Email varchar(25), PhoneNo varchar(15), Department varchar(10));

Insert into employee1(EmpID, Empname, Email,PhoneNo,Department) values(101,'ravi','ravi@gmail.com',9876543210,'IT'),(102,'Meena','meena@gmail.com',9876543211,'HR');

select * from employee1;

1.Which SQL Constraint should be implemented to prevent duplicate Email IDs, and why?

Answer

Unique Constraint. It will not allow to enter the duplicate values, If mail id already exist in the table.

2.An order can be created only if the Customer already exists in the Customer table. During
testing, a developer attempts to insert an order for a Customer ID that is not available in the
Customer table.

Answer

Foreign key Constraint

3.College Student Admission
System

create table student(StudentID int, StudentName varchar(20) not null, Age varchar(15), Course varchar(20));

Insert into student(studentID,studentname,age,course) values(101,'Arjun',20,'BCA'),(102,'Divya',19,'BSC');

Select * from student;

Anser;

Not null. If we did not add employee name, it will populate the error.

Insert into student(103,20,'BE');

4.Banking Account Management

Which SQL Constraint should be used to restrict invalid account types from being stored
in the database?

create table bankaccount(AccNo int, CustName varchar(25),AccType varchar(30) check (AccType in ('Savings', 'Current')), Balance varchar(30));

insert into bankaccount(AccNo,Custname,AccType,balance) values(5001,'John','Savings',25000),(5002,'Priya','Current',80000);

select * from bankaccount;

Answer
Check Connstraint.

Insert into bankaccount(5005,'Vishnu','Personal',100000);

We cant enter the personal account type.

5.Company Asset Management

create table assets1(AssetID int, AssetName varchar(40), Status varchar(20) default ('Active'), PurchaseDate varchar(30));

insert into assets1(AssetID,Assetname,Status,PurchaseDate) values(A101,'laptop',2026-01-15),(A102,'Monitor',2026-02-10);
