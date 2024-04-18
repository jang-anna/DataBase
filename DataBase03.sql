-- CREATE TABLE employees(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
--    employeename VARCHAR(100),
--    position VARCHAR(100),
--    salary DECIMAL(10, 2)

-- INSERT employees(employeename, position, salary)
-- VALUE
 -- ('혜린', 'PM', 90000),
-- ('은우', 'Frontend', 80000),
-- ('가을', 'Backend', 92000),
-- ('지수', 'Frontend', 78000),
-- ('민혁', 'Frontend', 96000),
-- ('하온', 'Backend', 130000);

-- SELECT employeename, salary FROM employees;

-- SELECT employeename,salary 
-- FROM employees 
-- WHERE position = 'Frontend' and salary <= 90000;

-- UPDATE employees
-- SET alary = salary * 1.1
-- WHERE position = 'PM';

-- UPDATE employees
-- SET salary = salary * 1.05
-- WHERE position = 'Backend';

-- DELETE FROM employees
-- WHERE employeename = '민혁';

-- SELECT position, AVG(salary) 
-- AS average_salary FROM employees GROUP BY position;

-- DROP TABLE employees;