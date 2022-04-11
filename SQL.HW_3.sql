--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id ;

--2. ������� ���� ���������� � ������� �� ������ 2000.

select employees.employee_name, salary.monthly_salary   from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id ;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select salary.monthly_salary, roles.role_name from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id 
where salary.monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.

select employees.employee_name, salary.monthly_salary from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id ; 

-- 7. ������� ����� � ��������� ������ Java �������������.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Java_dev%'; 

--8. ������� ����� � ��������� ������ Python �������������.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Python%'; 

--9. ������� ����� � ��������� ���� QA ���������.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%QA%'; 

--10. ������� ����� � ��������� ������ QA ���������.

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Manual_QA%'; 

--11. ������� ����� � ��������� ��������������� QA

select employees.employee_name, roles.role_name  from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id  = roles.id 
where roles.role_name like '%Automation_QA%'; 

--12. ������� ����� � �������� Junior ������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%';

--13. ������� ����� � �������� Middle ������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle%';

--14. ������� ����� � �������� Senior ������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior%';

--15. ������� �������� Java �������������

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java_dev%';

--16. ������� �������� Python �������������

select roles.role_name, salary.monthly_salary  from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior_Python%';

--18. ������� ����� � �������� Middle JS �������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Middle_JavaScript%';

--19. ������� ����� � �������� Senior Java �������������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Senior_Java_dev%';

--20. ������� �������� Junior QA ���������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id
where roles.role_name like 'Junior%QA%';

--21. ������� ������� �������� ���� Junior ������������

select AVG(salary.monthly_salary) as AVG_monthly_salary_Junior from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Junior%';

--22. ������� ����� ������� JS �������������

select SUM(salary.monthly_salary) as SUM_monthly_salary_JS from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������

select min(salary.monthly_salary) as min_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--24. ������� ������������ �� QA ���������

select max(salary.monthly_salary) as max_monthly_salary_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--25. ������� ���������� QA ���������

select count(salary.monthly_salary) as count_QA from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

--26. ������� ���������� Middle ������������.

select count(salary.monthly_salary) as count_middle from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like 'Middle%';

--27. ������� ���������� �������������

select count(salary.monthly_salary) as count_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--28. ������� ���� (�����) �������� �������������.

select sum(salary.monthly_salary) as sum_monthly_salary_dev from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%dev%';

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary between 1700 and 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary < 2300
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id
join employees on roles_employee.employee_id = employees.id 
where salary.monthly_salary in (1100,1500,2000)
order by salary.monthly_salary, roles.role_name, employees.employee_name  ;
