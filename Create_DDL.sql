--1. Создание таблицы "Salary".

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--2. Вывести содержимое таблицы

select * from salary;

--3. Создать таблицу "Roles"

create table roles(
	id serial primary key,
	role_title varchar(30) unique not null
);

--4. Вывести содержимое таблицы "Roles"

select * from roles;

--5. Создать таблицу "Salary_roles"

create table salary_roles (
	id serial primary key, 
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

--6. Вывести содержимое таблицы "Roles"

select * from salary_roles;

--7. Внести данные в таблицу Salary

insert into salary(monthly_salary)  
values (1200),
       (1300),
       (1400),
       (1450),
       (1500),
       (1600),
       (1700),
       (1800),
       (5000);

--8. Внести данные в таблицу Roles
      
insert into roles(role_title)  
values ('QA_manual_junior'),
       ('QA_manual_middle'),
       ('QA_manual_senior'),
       ('QA_automation_junior'),
       ('QA_automation_middle'),
       ('QA_automation_senior'),
       ('Developer_Java_junior'),
       ('Developer_Java_middle'),
       ('Developer_Java_senior'),
       ('Developer_Python_junior'),
       ('Developer_Python_middle'),
       ('Developer_Python_senior'),
       ('HR'),
       ('Designer'),
       ('Manager');
      
--9. Внести данные в таблицу salary_roles

insert into salary_roles(id_role, id_salary)  
values (1, 1),
	   (2, 4),
	   (3, 2),
	   (4, 6),
	   (5, 8),
	   (6, 3),
	   (7, 8),
	   (8, 5),
	   (9, 9);


	  

