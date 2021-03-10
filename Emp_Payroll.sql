--UC1: Create database for employee payroll
create database emp_Payroll;
SELECT * FROM sys.databases ;  
use emp_Payroll;

--UC2:Create table for employee payroll
create Table emp_Payroll
(
ID			int	identity(1, 1),
Name		varchar(255) NOT Null,
Salary		int,
StartDate	Date,
primary key(ID)
)

--UC3:Ability to use insert option
insert into emp_Payroll(Name, Salary, StartDate) values
('dhoni', 20000, '2018-01-01'),
('kohli', 45000, '2019-01-01'),
('rahane', 22000, '2020-01-01');

--UC4:Ability to retrive data
Select * from emp_Payroll