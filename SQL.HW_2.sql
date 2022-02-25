--1. Create table employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
 id serial primary key,
 employee_name varchar(50) not null
);

--2. Fill table employee 70 lines.

insert into employees (employee_name) 
values 
('Darius'),
('Harlan'),
('Hakeem'),
('Kobe'),
('Ruben'),
('Cash'),
('Ximenes'),
('Samson'),
('Jacob'),
('Yoshiaki'),
('Nicolas'),
('Griffin'),
('Pablo'),
('Ismael'),
('Franco'),
('Robert'),
('Joseph'),
('Grey'),
('Pedro'),
('Ziya'),
('Urban'),
('Miles'),
('Howard'),
('Zack'),
('Darius'),
('Watson'),
('Zakary'),
('Vance'),
('Landen'),
('Floss'),
('Yousuf'),
('Alexander'),
('Dexter'),
('Zain'),
('Angela'),
('Megan'),
('Faith'),
('Celeste'),
('Ivy'),
('Renee'),
('Beatrix'),
('Winnifred'),
('Gwenyth'),
('Anastasia'),
('Ursuline'),
('Novalee'),
('Sariah'),
('Emily'),
('Xantha'),
('Quianna'),
('Belinda'),
('Flore'),
('Margot'),
('Wilhelmina'),
('Ryann'),
('Danika'),
('Jaliyah'),
('Orly'),
('Winnifred'),
('Rosalyn'),
('Lorelei'),
('Tala'),
('Xandra'),
('Victoria'),
('Sylvie'),
('Alice'),
('Isabel'),
('Rosie'),
('Gia'),
('Xena');

--3. Create table salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
 id serial primary key,
 monthly_salary int not null
);

--4. Fill table salary 16 lines.

insert into salary (monthly_salary) 
values 
(1000),
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

--5. Create table employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary (
 id serial primary key,
 employee_id int unique not null,
 salary_id int not null
);

--6. Fill table employee_salary 40 lines:
-- in 10 lines out of 40 insert non-existent employee_id

insert into employee_salary (employee_id,salary_id)
values 
(40,1),
(39,2),
(38,3),
(37,4),
(36,5),
(35,6),
(34,7),
(33,8),
(32,9),
(31,10),
(60,11),
(61,12),
(62,13),
(63,14),
(64,15),
(65,1),
(66,2),
(67,3),
(68,4),
(69,5),
(20,6),
(19,7),
(18,8),
(17,9),
(16,10),
(15,11),
(14,12),
(13,13),
(12,14),
(11,15),
(10,16),
(9,1),
(8,2),
(7,3),
(6,5),
(5,7),
(4,9),
(3,10),
(2,11),
(1,15);

select * from roles_employee;

--7. Create table roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles (
 id serial primary key,
 role_name int unique not null
);

--8. Change type column role_name from int to varchar(30)

alter table roles
alter column role_name type varchar(30);

--9. Fill table roles 20 lines:

insert into roles (role_name)
values 
('Junior_Python_developer'),
('Middle_Python_developer'),
('Senior_Python_developer'),
('Junior_Java_developer'),
('Middle_Java_developer'),
('Senior_Java_developer'),
('Junior_JavaScript_developer'),
('Middle_JavaScript_developer'),
('Senior_JavaScript_developer'),
('Junior_Manual_QA_engineer'),
('Middle_Manual_QA_engineer'),
('Senior_Manual_QA_engineer'),
('Project_Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales_manager'),
('Junior_Automation_QA_engineer'),
('Middle_Automation_QA_engineer'),
('Senior_Automation_QA_engineer');

--10. Create table roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (foreign key for table employees, column id)
-- role_id. Int, not null (foreign key for table roles, column id)

create table roles_employee (
 id serial primary key,
 employee_id int unique not null,
 role_id int not null,
 foreign key (employee_id)
 	references employees(id),
 foreign key (role_id)
 	references roles(id)
);

--11. Fill table roles_employee 40 lines:

insert into roles_employee (employee_id,role_id)
values 
(40,20),
(39,15),
(38,17),
(37,4),
(36,5),
(35,6),
(34,7),
(33,19),
(32,10),
(31,18),
(30,11),
(29,8),
(28,13),
(27,14),
(26,7),
(25,17),
(24,2),
(23,1),
(22,4),
(21,4),
(20,16),
(19,7),
(18,8),
(17,9),
(16,10),
(15,11),
(14,1),
(13,3),
(12,14),
(11,7),
(10,4),
(9,17),
(8,18),
(7,19),
(6,15),
(5,1),
(4,12),
(3,2),
(2,14),
(1,5);
