<<<<<<< HEAD
<<<<<<< HEAD
=======
=======

>>>>>>> UC2_CreateTable
--UC1:create Db employee payroll
create database employee_Payroll;
select * from sys.databases;
use employee_Payroll
<<<<<<< HEAD
>>>>>>> UC1_CreateDB
=======

--UC2:Create  employee payroll table
create Table employee_Payroll
(
ID			int	identity(1, 1),
Name		varchar(255) NOT Null,
Salary		int,
StartDate	Date,
primary key(ID)
)
>>>>>>> UC2_CreateTable
