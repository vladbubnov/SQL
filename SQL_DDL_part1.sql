--1. Создать таблицу employees 

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

--2. Наполнить таблицу employees 70 строками

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
	 	  
--3. Создать таблицу salary
	 	  
create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

--4. Наполнить таблицу salary 15 строками

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

--5. Создать таблицу employee_salary
	      
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

--6. Наполнить таблицу employee_salary 40 строками

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

--7. Создать таблицу roles 
	 
create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

--8. Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--9. Наполнить таблицу roles 20 строками


