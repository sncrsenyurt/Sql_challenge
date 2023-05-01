-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary

from employees as e
INNER JOIN salaries as s
ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986

select e.first_name,e.last_name,e.hire_date
from employees as e
WHERE hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name

select dm.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name

from employees as e
INNER JOIN dept_manager as dm
on e.emp_no = dm.emp_no
INNER JOIN departments as d
on dm.dept_no = d.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select dm.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name

from employees as e
INNER JOIN dept_emp as dm
on e.emp_no = dm.emp_no
INNER JOIN departments as d
on dm.dept_no = d.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select e.first_name,e.last_name,e.sex
from employees as e
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no,e.last_name,e.first_name

from employees as e
INNER JOIN dept_emp as d
on e.emp_no = d.emp_no
INNER JOIN departments as dp
on d.dept_no = dp.dept_no

WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no,e.last_name,e.first_name,dp.dept_name

from employees as e
INNER JOIN dept_emp as d
on e.emp_no = d.emp_no
INNER JOIN departments as dp
on d.dept_no = dp.dept_no

WHERE dept_name = 'Sales' or dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

  SELECT last_name, COUNT(last_name)AS Frequency

  FROM employees

  GROUP BY last_name

  ORDER BY Frequency DESC




