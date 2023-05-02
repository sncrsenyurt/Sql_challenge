### SQL Challenge Solution
This repository contains my solution to a SQL challenge. The challenge required me to write SQL queries to extract information from a database containing employee data. The database schema included the following tables:

- employees: contains information about each employee, including their employee number, name, birthdate, hire date, and gender.
- salaries: contains information about each employee's salary history.
- dept_emp: contains information about which departments each employee has worked in.
- dept_manager: contains information about which managers have been responsible for which departments.
- departments: contains information about each department, including the department number and name.
To complete the challenge, I wrote the following SQL queries:

1. select e.emp_no,e.last_name,e.first_name,e.sex,s.salary from employees as e INNER JOIN salaries as s ON e.emp_no = s.emp_no;
  * This query lists the employee number, last name, first name, sex, and salary of each employee.

2. select e.first_name,e.last_name,e.hire_date from employees as e WHERE hire_date between '1986-01-01' and '1986-12-31';
  * This query lists the first name, last name, and hire date for the employees who were hired in 1986.

3. select dm.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name from employees as e INNER JOIN dept_manager as dm on e.emp_no = dm.emp_no INNER JOIN departments as d on dm.dept_no = d.dept_no;
  * This query lists the manager of each department along with their department number, department name, employee number, last name, and first name.

4. select dm.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name from employees as e INNER JOIN dept_emp as dm on e.emp_no = dm.emp_no INNER JOIN departments as d on dm.dept_no = d.dept_no;
  * This query lists the department number for each employee along with that employee's employee number, last name, first name, and department name.

5. select e.first_name,e.last_name,e.sex from employees as e WHERE first_name = 'Hercules' and last_name LIKE 'B%'
  * This query lists the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. select e.emp_no,e.last_name,e.first_name from employees as e INNER JOIN dept_emp as d on e.emp_no = d.emp_no INNER JOIN departments as dp on d.dept_no = dp.dept_no WHERE dept_name = 'Sales';
  * This query lists each employee in the Sales department, including their employee number, last name, and first name.

7. select e.emp_no,e.last_name,e.first_name,dp.dept_name from employees as e INNER JOIN dept_emp as d on e.emp_no = d.emp_no INNER JOIN departments as dp on d.dept_no = dp.dept_no WHERE dept_name = 'Sales' or dept_name = 'Development';
 * This query lists each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. SELECT last_name, COUNT(last_name)AS Frequency FROM employees GROUP BY last_name ORDER BY Frequency DESC
* This query lists the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Overall, I enjoyed working on this SQL challenge and learned a lot about writing SQL queries to extract information

### Here is my DataBase Diagram
![QuickDBD-export](https://user-images.githubusercontent.com/35157651/235561443-155f576c-87a5-40fc-8975-f05dfb9a1472.png)

