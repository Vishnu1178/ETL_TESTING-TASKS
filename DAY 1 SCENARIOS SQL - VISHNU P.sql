-- DAY 1 
-- 1 Employee Management System

use  ETL; 
create table Employee2 (EmpID INT,EmpName VARCHAR(50),Department VARCHAR(30),Salary INT);

insert into Employee2 (EmpID, EmpName, Department, Salary) values(101, 'John', 'IT', 45000),(102, 'Mary', 'HR', 35000),(103, 'David', 'Finance', 55000),(104, 'Sam', 'IT', 40000),(105, 'Priya', 'HR', 38000);

ANSWER

select * from employee2;

--2 College Student Database

Answer

alter table student add email;

-- 3 Online Shopping System

create table Product2 (ProductID INT,ProductName VARCHAR(50),Price INT);

insert into Product2 (ProductID, ProductName, Price) values(101, 'Laptop', 60000),(102, 'Mouse', 800),(103, 'Keyboard', 1200),(104, 'Monitor', 15000),(105, 'Printer', 9000);

select * from product2;

Answer

update product2 set Price = 1500 where ProductID = 103;

--4 Hospital Database

delete from patient where PatientID=2;

--5 School Management System
   -- Remove all records from the table without deleting the table structure.
   -- Answer
   Truncate table student;
   
-- 6 Company Database  
 -- Rename the Employee table to Staff.
 -- Answer
     
  Rename table employee to staff;

--7 Banking System
 Update Account No. 1002's balance to 35000 and permanently save the changes.
 Answer:
 
 Autocommit must be enabled when try to add the balance.
 
 --8 Library Management System
   Delete Book ID 3 and restore it before committing the transaction.
   Answer
   We can use the Rollback command.
 

