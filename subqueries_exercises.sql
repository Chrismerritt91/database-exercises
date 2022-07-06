USE employees;

# 1
SELECT concat(e.first_name, ' ', e.last_name) as full_name, e.emp_no
From employees e
WHERE e.hire_date IN (SELECT hire_date
                      FROM employees
                      WHERE emp_no = 101010);

# 2
SELECT t.title
FROM titles t
WHERE t.emp_no IN (SELECT emp_no
                   FROM employees
                   WHERE first_name = 'Aamod');

# 3
SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no IN (SELECT emp_no
                   FROM dept_manager
                   WHERE gender = 'F'
                     AND to_date > NOW());

# b1
SELECT dept_name
FROM departments d
WHERE d.dept_no IN (SELECT dept_no
                   FROM dept_manager
                   WHERE emp_no IN (
                       SELECT emp_no FROM employees
                                     WHERE gender = 'F'
                                       AND to_date > NOW())
                       );

# b2
SELECT e.first_name, e.last_name FROM employees e
WHERE e.emp_no IN (
    SELECT s.emp_no FROM salaries s
                    WHERE s.salary = (SELECT MAX(salary) from salaries)
    );