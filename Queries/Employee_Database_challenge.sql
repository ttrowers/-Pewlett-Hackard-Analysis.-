-- Joining employees and title tables
SELECT employees.emp_no,
    employees.first_name,
employees.last_name,
	titles.titles,
    titles.from_date,
	titles.to_date
INTO titles_info
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
