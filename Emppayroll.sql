

--UC3:Ability to use insert option
insert into emp_Payroll(Name, Salary, StartDate) values
('dhoni', 20000, '2018-01-01'),
('kohli', 45000, '2019-01-01'),
('rahane', 22000, '2020-01-01');

--UC4:Ability to retrive data
select * from emp_Payroll;

--UC5: Find particular person salary and particular date range 
select salary from emp_Payroll where Name = 'dhoni';
select * from emp_Payroll where StartDate	between '2020-01-01' and GETDATE();

--UC6:Ability to add geneder row in table
alter table emp_Payroll add Gender char(1)
update emp_Payroll set Gender = 'M'; 
insert into emp_Payroll(Name, Salary, StartDate,Gender) values
('shravni', 15000, '2019-01-01','F'),
('seema', 30000, '2020-01-01','F');

--UC7:Ability to find avg,min,max and count
select sum(Salary) as total_salary from emp_Payroll
select avg(Salary) as average_salary from emp_Payroll
select min(Salary) as min_salary from emp_Payroll
select max(Salary) as max_salary from emp_Payroll
select count(Salary) as salary_count from emp_Payroll

select Gender, sum(Salary) as total_salary from emp_Payroll group by Gender
select Gender, count(Salary) as salary_count from emp_Payroll group by Gender
select Gender, max(Salary) as max_salary from emp_Payroll group by Gender;

--UC8:Add address and department extend the row
alter table emp_Payroll add PhoneNumber bigint, Address varchar(150) default('Mumbai'), Department varchar(50)  ;

--UC9:Ability to extend basic pay,deduction,tax pay,Income tax,net pay
alter table emp_Payroll add Deduction int, TaxablePay int, IncomeTax int, NetPay int;
EXEC sp_RENAME 'emp_Payroll.Salary', 'BasicPay', 'column'

--UC10:Add terissa for marketing and sales
insert into emp_Payroll(Name, Salary, StartDate,Gender) values
('Terissa', 15000, '2019-01-01','F');
update emp_Payroll set Department = 'Sales'  where Name  = 'Terissa';
insert into emp_Payroll(Name, Department) values('Terissa', 'Marketing');



