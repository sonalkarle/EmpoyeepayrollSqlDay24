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
