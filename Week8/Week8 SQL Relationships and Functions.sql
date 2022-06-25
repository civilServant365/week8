select count(title) as CountOfTitle, title as Title, 
employees.birth_date as FirstBirthDate from titles
inner join employees on  
titles.emp_no=employees.emp_no where
 employees.birth_date >
'1965-01-01' group by title;

select titles.title as Title, avg(salary) as AverageSalary 
from salaries 
inner join titles on titles.emp_no=salaries.emp_no
 group by title;
 
select sum(salary), departments.dept_name, 
dept_emp.from_date, dept_emp.to_date 
from salaries inner join dept_emp on 
dept_emp.emp_no= salaries.emp_no inner join departments on 
dept_emp.dept_no=departments.dept_no where
 dept_emp.from_date >= '1990-01-01' and
 dept_emp.to_date <= '1992-12-31' group by dept_name;
 
 
