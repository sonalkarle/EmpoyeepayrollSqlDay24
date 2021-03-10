<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======

>>>>>>> UC2_CreateTable
=======




>>>>>>> UC3_InsertDetails
--UC1:create Db employee payroll
create database employee_Payroll;
select * from sys.databases;
use employee_Payroll;

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

--UC4:Ability to retrive data
select * from employee_Payroll;


--UC5: Find particular person salary and particular date range 
select salary from employee_Payroll where Name = 'dhoni';
select * from employee_Payroll where StartDate	between '2020-01-01' and GETDATE();


--UC6:Ability to add geneder row in table
alter table employee_Payroll add Gender char(1)
update employee_Payroll set Gender = 'M'; 
insert into employee_Payroll(Name, Salary, StartDate,Gender) values
('shravni', 15000, '2019-01-01','F'),
('seema', 30000, '2020-01-01','F');
