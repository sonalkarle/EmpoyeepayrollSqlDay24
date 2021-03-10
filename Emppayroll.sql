



--UC1:create Db employee payroll
create database employee_Payroll;
select * from sys.databases;
use employee_Payroll

--UC2:Create  employee payroll table
create Table employee_Payroll
(
ID			int	identity(1, 1),
Name		varchar(255) NOT Null,
Salary		int,
StartDate	Date,
primary key(ID)
)

--UC3:Ability to use insert option
insert into employee_Payroll(Name, Salary, StartDate) values
('dhoni', 20000, '2018-01-01'),
('kohli', 45000, '2019-01-01'),
('rahane', 22000, '2020-01-01');
