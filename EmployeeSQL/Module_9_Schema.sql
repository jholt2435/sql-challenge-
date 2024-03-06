Create Table titles (
title_id varchar not null,
title varchar not null, 
Primary Key (title_id)
);



Create Table employees (
emp_no Int not null Primary Key,
emp_title_id Varchar not null, 
birth_date Date not null, 
first_name Varchar not null, 
last_name Varchar not null, 
sex Varchar not null, 
hire_date Date not null, 
foreign key (emp_title_id) references titles(title_id)
); 



Create Table departments (
dept_no Varchar not null Primary Key, 
dept_name Varchar not null 
);



Create table dept_emp(
emp_no Int not null,
dept_no Varchar,
PRIMARY KEY (emp_no, dept_no),
Foreign Key (emp_no) references employees (emp_no),
Foreign Key (dept_no) references departments (dept_no)
);



Create table dept_manager (
dept_no Varchar not null, 
emp_no Int not null primary key, 
Foreign Key (dept_no) references departments(dept_no),
Foreign Key (emp_no) references employees (emp_no)
);



Create Table Salaries (
emp_no Int not null Primary key, 
salary Int not null,
Foreign Key (emp_no) references employees (emp_no)
);


