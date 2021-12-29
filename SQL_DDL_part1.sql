--1. Create a table employees 

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

--2. Add to the table employees 70 lines

insert into employees(employee_name)
	values ('Adam'),
	 	   ('Vadim'),
	 	   ('Anton'),
	 	   ('Vlad'),
	 	   ('Inna'),
	 	   ('Olga'),
	 	   ('Kate'),
	 	   ('Nastya'),
	 	   ('Anna'),
	 	   ('Kseniya'),
	 	   ('Daria'),
	 	   ('Lena'),
	 	   ('Julia'),
	 	   ('Nataly'),
	 	   ('Andrew'),
	 	   ('Inga'),
	 	   ('Dmitry'),
	 	   ('Igor'),
	 	   ('Gleb'),
	 	   ('Tanya'),
	 	   ('Viktoria'),
	 	   ('Liubov'),
	 	   ('Nikita'),
	 	   ('Mike'),
	 	   ('Evgeniy'),
	 	   ('Jully'),
	 	   ('Alex'),
	 	   ('Pavel'),
	 	   ('Ruslan'),
	 	   ('Valeriya'),
	 	   ('Ilnur'),
	 	   ('Timur'),
	 	   ('Mat'),
	 	   ('Viktor'),
	 	   ('Maria'),
	 	   ('Aidar'),
	 	   ('Yura'),
	 	   ('Alina'),
	 	   ('Artem'),
	 	   ('Eleonora'),
	 	   ('Ansar'),
	 	   ('Natka'),
	 	   ('Pavel'),
	 	   ('Natasha'),
	 	   ('Mila'),
	 	   ('Sveta'),
	 	   ('Roman'),
	 	   ('Inna'),
	 	   ('Liliya'),
	 	   ('Serj'),
	 	   ('Liza'),
	 	   ('Lyalya'),
	 	   ('Karina'),
	 	   ('Angela'),
	 	   ('Vova'),
	 	   ('Egor'),
	 	   ('Maxim'),
	 	   ('Renat'),
	 	   ('Vera'),
	 	   ('Alena'),
	 	   ('Alina'),
	 	   ('Yaroslav'),
	 	   ('Mario'),
	 	   ('Ivan'),
	 	   ('Ilya'),
	 	   ('Lika'),
	 	   ('Mikhail'),
	 	   ('Danil'),
	 	   ('John'),
	 	   ('Mila');
	 	  
--3. Create a table salary
	 	  
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

--4. Add to the table salary 16 lines

insert into salary(monthly_salary)
	values (1000),
	       (1100),
	       (1200),
	       (1300),
	       (1400),
	       (1500),
	       (1600),
	       (1700),
	       (1800),
	       (1900),
	       (2000),
	       (2100),
	       (2200),
	       (2300),
	       (2400),
	       (2500);

--5. Create a table employee_salary
	      
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

--6. Add to the table employee_salary 40 lines

insert into employee_salary(employee_id, salary_id)
	values (3, 7),
	 	   (1, 4),
	 	   (5, 9),
	 	   (40, 13),
	 	   (23, 4),
	 	   (11, 2),
	 	   (52, 10),
	 	   (15, 13),
	 	   (26, 4),
	 	   (16, 1),
	 	   (33, 7),
	 	   (71, 11),
	 	   (2, 4),
	 	   (4, 6),
	 	   (6, 15),
	 	   (72, 5),
	 	   (7, 3),
	 	   (8, 9),
	 	   (20, 15),
	 	   (73, 14),
	 	   (74, 10),
	 	   (22, 1),
	 	   (27, 7),
	 	   (12, 6),
	 	   (13, 13),
	 	   (75, 2),
	 	   (76, 7),
	 	   (77, 11),
	 	   (78, 15),
	 	   (79, 4),
	 	   (80, 8),
	 	   (53, 5),
	 	   (48, 11),
	 	   (34, 1),
	 	   (35, 5),
	 	   (36, 8),
	 	   (37, 13),
	 	   (38, 15),
	 	   (39, 7),
	 	   (47, 3);

--7. Create a table roles 
	 
create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

--8. Ñhange the column type role_name int to varchar(30)

alter table roles
alter column role_name type varchar(30);

--9. Add to the table roles 20 lines

insert into roles(role_name)
	values ('Junior Python developer'),
		   ('Middle Python developer'),
		   ('Senior Python developer'),
		   ('Junior Java developer'),
		   ('Middle Java developer'),
		   ('Senior Java developer'),
		   ('Junior JavaScript developer'),
		   ('Middle JavaScript developer'),
		   ('Senior JavaScript developer'),
		   ('Junior Manual QA engineer'),
		   ('Middle Manual QA engineer'),
		   ('Senior Manual QA engineer'),
		   ('Project manager'),
		   ('Designer'),
		   ('HR'),
		   ('CEO'),
		   ('Sales manager'),
		   ('Junior Automation QA engineer'),
		   ('Middle Automation QA engineer'),
		   ('Senior Automation QA engineer');
		  
select * from roles;

--10. Create a table roles_employee

create table roles_employee( 
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

--11. Add to the table roles_employee 40 lines

insert into roles_employee(employee_id, role_id)
	values (7, 2),		
		   (20, 4),
		   (3, 9),
		   (5, 13),
		   (23, 4),
		   (11, 2),
		   (10, 9),
		   (22, 13),
		   (21, 3),
		   (34, 4),
		   (6, 7),
		   (1, 6),
		   (2, 15),
		   (4, 11),
		   (8, 4),
		   (9, 12),
		   (13, 7),
		   (14, 1),
		   (15, 8),
		   (17, 12),
		   (18, 13),
		   (19, 5),
		   (24, 2),
		   (25, 6),
		   (35, 4),
		   (36, 9),
		   (40, 15),
		   (33, 8),
		   (69, 3),
		   (41, 9),
		   (42, 14),
		   (43, 11),
		   (47, 5),
		   (48, 7),
		   (50, 10),
		   (51, 11),
		   (55, 14),
		   (60, 3),
		   (65, 2),
		   (68, 13);

select * from roles_employee;




