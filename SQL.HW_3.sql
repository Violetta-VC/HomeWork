--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id ;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id ;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.

select employees.employee_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is null;

--6. Вывести всех работников с названиями их должности.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id ; 

-- 7. Вывести имена и должность только Java разработчиков.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Java_dev%'; 

--8. Вывести имена и должность только Python разработчиков.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Python%'; 

--9. Вывести имена и должность всех QA инженеров.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%QA%'; 

--10. Вывести имена и должность ручных QA инженеров.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Manual_QA%'; 

--11. Вывести имена и должность автоматизаторов QA

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Automation_QA%'; 

--12. Вывести имена и зарплаты Junior специалистов

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%';

--13. Вывести имена и зарплаты Middle специалистов

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle%';

--14. Вывести имена и зарплаты Senior специалистов

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior%';

--15. Вывести зарплаты Java разработчиков

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java_dev%';

--16. Вывести зарплаты Python разработчиков

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior_Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle_JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior_Java_dev%';

--20. Вывести зарплаты Junior QA инженеров

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов

select AVG(salary.monthly_salary) as AVG_monthly_salary_Junior from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%';

--22. Вывести сумму зарплат JS разработчиков

select SUM(salary.monthly_salary) as SUM_monthly_salary_JS from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров

select min(salary.monthly_salary) as min_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

select max(salary.monthly_salary) as max_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--25. Вывести количество QA инженеров

select count(salary.monthly_salary) as count_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--26. Вывести количество Middle специалистов.

select count(salary.monthly_salary) as count_middle from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle%';

--27. Вывести количество разработчиков

select count(salary.monthly_salary) as count_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(salary.monthly_salary) as sum_monthly_salary_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary in (1100,1500,2000)
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;
