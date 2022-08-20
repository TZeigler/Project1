create database project_Clean
go

Alter Table Titles
add constraint PK_Titles
Primary Key (title_ID);

Alter Table salaries
add constraint PK_salaries
Primary Key (emp_no);

Alter table salaries
drop constraint PK_salaries ;

Alter Table Dept_manager
add constraint PK_dept_manager
Primary Key (emp_no);

Alter Table title
add constraint 

Alter Table employees
add constraint PK_employees
Primary Key (emp_no);

Alter Table employees
Add Constraint DFT_employees_Hire_date
Default (sysdatetime() ) for Hire_date;


Alter Table departments
add constraint PK_departments
Primary Key (Dept_no);

Alter Table departments
add constraint fk_departments
foreign key (dept_no)
references dept_emp (dept_no);


ALTER TABLE dept_emp with nocheck
ADD CONSTRAINT FK_dept_emp
Foreign key (Dept_no)
References departments (dept_no);


Alter Table Salaries
add constraint fk_salaries
foreign key (emp_no)
references employees (emp_no);


ALTER TABLE Titles
ADD CONSTRAINT UNQ_Titles 
UNIQUE (Title_ID);

Alter Table dept_manager
add constraint fk_dept_manager
foreign key (emp_no)
references employees (emp_no);



Alter Table dept_emp
add constraint PK_dept_emp
Primary Key (emp_no);

Create Index employees_info_idx
on employees (emp_no,first_name,last_name);

Alter Table dept_manager
Add Constraint FK_dept_manager_departments
foreign key (dept_no)
references departments (dept_no)

Alter Table employees add title_id nvarchar (50) null;

Update employees
Set title_id = emp_title_id;

Alter table employees
add constraint fk_employees_titles
foreign key (title_id ) 
references titles (title_id);


---Part 2---

Select employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees 
join
salaries on  employees.emp_no=salaries.emp_no

Select first_name, last_name, hire_date
from employees
where hire_date  between '1986-01-01'
and '1986-12-31';

Select departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, titles.title_id
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on employees.emp_no=dept_manager.emp_no
join titles
on titles.title_id = employees.title_id
where title = 'manager'
order by dept_name asc;

select employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments
on dept_emp.dept_no=departments.dept_no
order by last_name asc;

Select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'b%'
order by last_name;

select employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments
on dept_emp.dept_no=departments.dept_no
where dept_name ='sales'
order by last_name desc;

select employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments
on dept_emp.dept_no=departments.dept_no
where dept_name in('sales' ,'development')
order by dept_name;

Select last_name, COUNT (*) as total
from employees
group by last_name
order by last_name desc;