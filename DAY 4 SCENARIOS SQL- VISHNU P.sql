-- DAY 4
-- 1 A company stores employee names in different formats such as lowercase, uppercase, and mixed
  case. The HR department wants a report where all employee names are displayed in uppercase.
  
  create database ETL;
  
  use ETl;
  
  Create table employee(EMPID Int, EMPNAME Varchar(100),DEPARTMENT varchar(100),SALARY decimal(10,2));
  
  insert into employee(EMPID, EMPNAME, DEPARTMENT, SALARY) 
  values(1,'vishnu','IT',70000),(2,'raj','sales',80000),(3,'Mathi','HR',65000),(4,'mani','finance',45000),(5,'ram','IT',55000),(6,'vijay','HR',75000);
  
  Answer
  
  MINIMUM 6 records
  
  select upper(empname) as EMPNAME from employee;
  
  -- 2 An online shopping company stores product prices with decimal values.
  
  Create table Product(PRODUCTID int,PRODUCTNAME varchar(100),PRICE decimal(10,2),CATEGORY varchar(50));
  
  insert into product(PRODUCTID,PRODUCTNAME,PRICE,CATEGORY)values(1,'DELL',68000,'LAPTOP'),(2,'VIVO',25000,'Mobile'),(3,'Preethi',2500,'Indusction'),(4,'IPHONE',100000,'Mobile'),(5,'VGUARD',5000,'STABILIZER'),(6,'LG',30000,'FRIDGE'),(7,'REDMI',45000,'TV'),(8,'ASUS',95000,'LAPTOP');
  
  -- ANS
  
  select * from product;
  
  -- 3 The HR department wants to analyze employee joining details.
  
  create table employee1(EMPID int, EMPNAME varchar(100), JOINDATE date, DEPARTMENT varchar(50)); 
  
  insert into employee1(EMPID,EMPNAME,JOINDATE,DEPARTMENT) values(100,'vishnu','2018-05-01','HR'),(101,'vishnuram','2019-06-10','IT'),(102,'vinoth','2018-04-05','SALES'),(103,'veera','2020-03-08','credit'),(104,'jeya','2021-08-11','ops'),(105,'rahul','2017-05-11','IT'),(106,'venky','2019-05-01','ops'),(107,'bala','2018-05-02','support');
  
  select * from employee1;
  
  Answer
  
  select dayofweek(joindate) from employee1;
  
  select EMPNAME,JOINDATE, Month(JOINDATE) as JOINMONTH, Year(JOINDATE) as JOINYEAR,day(JOINDATE) as JOININGDAY from employee1;
  
  --4 A customer database contains NULL values in mobile numbers and email addresses.
  
  create table customer(CUSTID int,CUSTNAME varchar(100), MOBILENO varchar(15),EMAIL varchar(100));
  
  Insert into customer(CUSTID,CUSTNAME,MOBILENO,EMAIL) values(101,'vishnu',8737487387,'vishnu@gmail.com'),(102,'vishwa',938439488,NULL),(103,'veera',983493432,'veera@gmail.com'),(104,'rahu',986252511,'rahu@gmail.com'),(105,'guna',983498723,NULL),(106,'kali',NULL,'vishnu@gmail.com'),(107,'ram',NULL,'NULL'),(108,'vino',NULL,'vishnu@gmail.com');
  
  select * from customer;
  ANSWER
  select CustID, ifnull('EMAIL','AVAILABLE') as EMAIL,ifnull(Mobileno,'YES') as MOBILE from customer;
  
  -- 5 A training institute wants to categorize students based on their marks.
  
  
  

