USE employees;

# 1
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
ORDER BY dept_name;

# 2
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date > NOW()
  AND e.gender = 'F'
ORDER BY dept_name;

# 3
SELECT t.title, COUNT(*) as 'Count'
FROM departments d
         Join dept_emp de ON de.dept_no = d.dept_no
         JOIN titles t ON t.emp_no = de.emp_no
WHERE t.to_date > NOW()
  AND de.to_date > NOW()
  AND d.dept_name = 'Customer Service'
Group by t.title;

# 4
SELECT d.dept_name,CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE dm.to_date > NOW() and s.to_date > NOW()
ORDER BY s.salary;

# 5









