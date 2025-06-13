use testdatabase;
SET SQL_SAFE_UPDATES = 0;

-- CREATE TABLE employees(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--  	name VARCHAR(100),
--     position VARCHAR(100),
--     salary DECIMAL(10, 2)
-- );

-- INSERT INTO employees(name, position, salary) VALUES
-- 	('혜린', 'PM', '90000'),
-- 	('은우', 'Frontend', '80000'),
--     ('가을', 'Backend', '92000'),
--     ('지수', 'Fronted', '78000'),
--     ('민혁', 'Fronted', '96000'),
--     ('하온', 'Backend', '130000');

-- SELECT name,salary FROM employees;

-- SELECT name,salary FROM employees WHERE salary <= 90000 and position ='Frontend';

-- UPDATE employees
-- SET salary = salary * 1.1
-- WHERE position = 'PM';

-- SELECT salary FROM employees WHERE position ='PM'

-- UPDATE employees
-- SET salary = salary * 1.05
-- WHERE position = 'Backend';

-- DELETE FROM employees WHERE name ='민혁'

-- SELECT position, AVG(salary) FROM employees GROUP BY position;

DROP TABLE employees