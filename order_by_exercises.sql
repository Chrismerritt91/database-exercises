USE employees;

# Select * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
Select * FROM employees WHERE gender = 'M' AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY last_name DESC , first_name DESC ;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC ;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE 'E%e';

SELECT * FROM employees WHERE last_name like '%q%';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';