--1. Display all employees whose salaries are in the database, along with their salaries.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id ;

--2. Display all employees whose salary is less than 2000.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary < 2000;

--3. Display all salary roles, but no employee is assigned to them. (There is a salary, but it is not clear who receives it.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id ;

--4. Display all salary roles less than 2000 but no employee has been assigned to them. (There is a salary, but it is not clear who receives it.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2000;

--5. Find all employees who have not received a salary.

select employees.employee_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is null;

--6. Display all employees with their job roles.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id ; 

-- 7. Display names and roles of Java developers only.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Java_dev%'; 

--8. Display names and roles of only Python developers.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Python%'; 

--9. Display the names and roles of all QA engineers.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%QA%'; 

--10. Display names and roles of manual QA engineers.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Manual_QA%'; 

--11. Display names and roles of Automation QA engineers.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Automation_QA%'; 

--12. Display the names and salaries of junior specialists.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%';

--13. Display the names and salaries of Middle specialists.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle%';

--14. Display the names and salaries of Senior specialists.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior%';

--15. Display the salaries of Java developers.

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java_dev%';

--16. Display the salaries of Python developers.

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--17. Display the names and salaries of Junior Python developers.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior_Python%';

--18. Display the names and salaries of Middle JS developers.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle_JavaScript%';

--19. Display the names and salaries of Senior Java developers.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior_Java_dev%';

--20. Display the salaries of Junior QA engineers.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%QA%';

--21. Display the average salary of all Juniors specialists.

select AVG(salary.monthly_salary) as AVG_monthly_salary_Junior from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%';

--22. Display the amount of salaries of JS developers.

select SUM(salary.monthly_salary) as SUM_monthly_salary_JS from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript%';

--23. Display the minimum salary of QA engineers.

select min(salary.monthly_salary) as min_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--24. Display the maximum salary of QA engineers.

select max(salary.monthly_salary) as max_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--25. Display the number of QA engineers.

select count(salary.monthly_salary) as count_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--26. Display the number of Middle specialists.

select count(salary.monthly_salary) as count_middle from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle%';

--27. Display the number of developers.

select count(salary.monthly_salary) as count_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--28. Display the fund (amount) of the developers' salaries.

select sum(salary.monthly_salary) as sum_monthly_salary_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--29. Display names, positions and salaries of all specialists in ascending order.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--30. Display the names, positions and salary of all specialists in ascending order from specialists whose salary is from 1700 to 2300.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--31. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is less than 2300.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--32. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000.

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary in (1100,1500,2000)
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;
