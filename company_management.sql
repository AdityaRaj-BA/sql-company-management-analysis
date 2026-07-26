-- Database CompanyA

CREATE DATABASE CompanyAg;
USE CompanyAg;

-- CREATE Manager Table
CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    join_date DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    experience_years INT,
    performance_rating DECIMAL(3, 2),
    city VARCHAR(50)
);

-- CREATE Staff Table
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    manager_id INT,
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    email VARCHAR(100),
    department VARCHAR(50),
    age INT,
    city VARCHAR(50),
    FOREIGN KEY (manager_id) REFERENCES Manager(manager_id)
);

-- CREATE Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    registration_date DATE,
    total_purchases DECIMAL(10, 2),
    loyalty_points INT,
    staff_id INT,
    account_status VARCHAR(20),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Insert 10 Manager records
INSERT INTO Manager VALUES
(1, 'Sarah Johnson', 'Sales', 85000.00, '2018-03-15', 'sarah.j@company.com', '555-0101', 6, 4.5, 'New York'),
(2, 'Michael Chen', 'IT', 95000.00, '2017-01-20', 'michael.c@company.com', '555-0102', 7, 4.8, 'San Francisco'),
(3, 'Emily Rodriguez', 'HR', 78000.00, '2019-06-10', 'emily.r@company.com', '555-0103', 5, 4.3, 'Chicago'),
(4, 'David Thompson', 'Finance', 92000.00, '2016-09-05', 'david.t@company.com', '555-0104', 8, 4.7, 'Boston'),
(5, 'Lisa Anderson', 'Marketing', 82000.00, '2020-02-28', 'lisa.a@company.com', '555-0105', 4, 4.4, 'Los Angeles'),
(6, 'James Wilson', 'Operations', 88000.00, '2018-11-12', 'james.w@company.com', '555-0106', 6, 4.6, 'Seattle'),
(7, 'Maria Garcia', 'Sales', 80000.00, '2019-04-18', 'maria.g@company.com', '555-0107', 5, 4.2, 'Miami'),
(8, 'Robert Brown', 'IT', 90000.00, '2017-07-22', 'robert.b@company.com', '555-0108', 7, 4.5, 'Austin'),
(9, 'Jennifer Lee', 'Customer Service', 75000.00, '2020-08-30', 'jennifer.l@company.com', '555-0109', 4, 4.1, 'Denver'),
(10, 'Christopher Davis', 'Finance', 87000.00, '2018-05-14', 'chris.d@company.com', '555-0110', 6, 4.4, 'Phoenix');

-- Insert 10 Staff records
INSERT INTO Staff VALUES
(101, 'Alex Martinez', 1, 'Sales Associate', 45000.00, '2020-01-15', 'alex.m@company.com', 'Sales', 28, 'New York'),
(102, 'Sophie Turner', 2, 'Software Developer', 72000.00, '2019-03-22', 'sophie.t@company.com', 'IT', 26, 'San Francisco'),
(103, 'Daniel Kim', 3, 'HR Specialist', 52000.00, '2021-05-10', 'daniel.k@company.com', 'HR', 30, 'Chicago'),
(104, 'Olivia White', 4, 'Accountant', 58000.00, '2019-08-18', 'olivia.w@company.com', 'Finance', 32, 'Boston'),
(105, 'Ethan Brown', 5, 'Marketing Coordinator', 48000.00, '2020-11-25', 'ethan.b@company.com', 'Marketing', 25, 'Los Angeles'),
(106, 'Isabella Clark', 6, 'Operations Analyst', 55000.00, '2020-06-30', 'isabella.c@company.com', 'Operations', 29, 'Seattle'),
(107, 'Noah Johnson', 1, 'Sales Representative', 47000.00, '2021-02-14', 'noah.j@company.com', 'Sales', 27, 'New York'),
(108, 'Ava Wilson', 2, 'System Administrator', 65000.00, '2019-09-05', 'ava.w@company.com', 'IT', 31, 'San Francisco'),
(109, 'Liam Garcia', 7, 'Sales Executive', 50000.00, '2020-07-20', 'liam.g@company.com', 'Sales', 29, 'Miami'),
(110, 'Emma Davis', 8, 'Database Administrator', 68000.00, '2019-12-12', 'emma.d@company.com', 'IT', 33, 'Austin');

-- Insert 10 Customer records
INSERT INTO Customer VALUES
(1001, 'John Anderson', 'john.a@email.com', '555-1001', 'New York', '2021-01-10', 15000.00, 1500, 101, 'Active'),
(1002, 'Rachel Green', 'rachel.g@email.com', '555-1002', 'San Francisco', '2021-03-22', 22000.00, 2200, 102, 'Active'),
(1003, 'Monica Geller', 'monica.g@email.com', '555-1003', 'Chicago', '2020-06-15', 8500.00, 850, 103, 'Active'),
(1004, 'Ross Geller', 'ross.g@email.com', '555-1004', 'Boston', '2021-08-20', 31000.00, 3100, 104, 'Premium'),
(1005, 'Chandler Bing', 'chandler.b@email.com', '555-1005', 'Los Angeles', '2020-11-30', 12000.00, 1200, 105, 'Active'),
(1006, 'Phoebe Buffay', 'phoebe.b@email.com', '555-1006', 'Seattle', '2021-02-14', 18500.00, 1850, 106, 'Active'),
(1007, 'Joey Tribbiani', 'joey.t@email.com', '555-1007', 'Miami', '2020-09-05', 6500.00, 650, 109, 'Inactive'),
(1008, 'Janice Hosenstein', 'janice.h@email.com', '555-1008', 'Austin', '2021-05-18', 27000.00, 2700, 110, 'Premium'),
(1009, 'Mike Hannigan', 'mike.h@email.com', '555-1009', 'Denver', '2020-12-22', 9800.00, 980, 101, 'Active'),
(1010, 'Gunther Central', 'gunther.c@email.com', '555-1010', 'Phoenix', '2021-07-11', 14200.00, 1420, 107, 'Active');

-- Query 1: Select all managers
SELECT * FROM Manager;

-- Query 2: Find managers with salary greater than 85000
SELECT manager_name, department, salary 
FROM Manager 
WHERE salary > 85000 
ORDER BY salary DESC;

-- Query 3: Count staff by department
SELECT department, COUNT(*) as staff_count 
FROM Staff 
GROUP BY department 
ORDER BY staff_count DESC;

-- Query 4: Find customers with Premium status
SELECT customer_name, city, total_purchases, loyalty_points 
FROM Customer 
WHERE account_status = 'Premium';

-- Query 5: Average salary by department for managers
SELECT department, AVG(salary) as avg_salary, COUNT(*) as manager_count
FROM Manager 
GROUP BY department 
ORDER BY avg_salary DESC;

-- Query 6: Staff hired after 2020
SELECT staff_name, position, hire_date, salary 
FROM Staff 
WHERE hire_date >= '2020-01-01' 
ORDER BY hire_date DESC;

-- Query 7: Total purchases and customers by city
SELECT city, COUNT(*) as customer_count, SUM(total_purchases) as total_revenue
FROM Customer 
GROUP BY city 
ORDER BY total_revenue DESC;

-- Query 8: Top 5 highest paid staff members
SELECT staff_name, position, salary, department 
FROM Staff 
ORDER BY salary DESC 
LIMIT 5;

-- Query 9: Managers with performance rating above 4.5
SELECT manager_name, department, performance_rating, salary 
FROM Manager 
WHERE performance_rating > 4.5 
ORDER BY performance_rating DESC;

-- Query 10: Customer loyalty points summary
SELECT 
    MIN(loyalty_points) as min_points,
    MAX(loyalty_points) as max_points,
    AVG(loyalty_points) as avg_points,
    SUM(loyalty_points) as total_points
FROM Customer;

-- Query 11: Staff with their Manager details (INNER JOIN)
SELECT
	s.staff_name, 
    s.position
FROM Staff s
INNER JOIN Manager m ON s.manager_id = m.manager_id
ORDER BY s.staff_name;

-- Query 12: Customers with their Staff and Manager information (Multiple JOINS)
SELECT 
    c.customer_name,
    c.total_purchases,
    s.staff_name,
    s.position,
    m.manager_name,
    m.department
FROM Customer c
INNER JOIN Staff s ON c.staff_id = s.staff_id
INNER JOIN Manager m ON s.manager_id = m.manager_id
ORDER BY c.total_purchases DESC;

-- Query 13: Department-wise revenue generated (JOIN with aggregation)
SELECT 
    m.department,
    COUNT(DISTINCT c.customer_id) as customer_count,
    SUM(c.total_purchases) as total_revenue,
    AVG(c.total_purchases) as avg_purchase
FROM Manager m
INNER JOIN Staff s ON m.manager_id = s.manager_id
INNER JOIN Customer c ON s.staff_id = c.staff_id
GROUP BY m.department
ORDER BY total_revenue DESC;

-- Query 14: Staff members with no customers (LEFT JOIN)
SELECT 
    s.staff_name,
    s.position,
    s.department,
    COUNT(c.customer_id) as customer_count
FROM Staff s
LEFT JOIN Customer c ON s.staff_id = c.staff_id
GROUP BY s.staff_id, s.staff_name, s.position, s.department
HAVING COUNT(c.customer_id) = 0;

-- Query 15: Top performing managers based on customer revenue
SELECT 
    m.manager_name,
    m.department,
    m.performance_rating,
    COUNT(DISTINCT c.customer_id) as customers_managed,
    SUM(c.total_purchases) as total_revenue
FROM Manager m
INNER JOIN Staff s ON m.manager_id = s.manager_id
INNER JOIN Customer c ON s.staff_id = c.staff_id
GROUP BY m.manager_id, m.manager_name, m.department, m.performance_rating
ORDER BY total_revenue DESC;

-- Query 16: Staff and their manager salary comparison
SELECT 
    s.staff_name,
    s.salary as staff_salary,
    m.manager_name,
    m.salary as manager_salary,
    (m.salary - s.salary) as salary_difference
FROM Staff s
INNER JOIN Manager m ON s.manager_id = m.manager_id
ORDER BY salary_difference DESC;

-- Query 17: Customers grouped by their staff's department
SELECT 
    s.department,
    c.customer_name,
    c.total_purchases,
    s.staff_name
FROM Customer c
INNER JOIN Staff s ON c.staff_id = s.staff_id
ORDER BY s.department, c.total_purchases DESC;

-- Query 18: Manager experience vs total staff managed
SELECT 
    m.manager_name,
    m.experience_years,
    m.department,
    COUNT(s.staff_id) as staff_count,
    AVG(s.salary) as avg_staff_salary
FROM Manager m
LEFT JOIN Staff s ON m.manager_id = s.manager_id
GROUP BY m.manager_id, m.manager_name, m.experience_years, m.department
ORDER BY staff_count DESC, m.experience_years DESC;

-- Query 19: Active vs Inactive customers with staff details
SELECT 
    c.account_status,
    COUNT(c.customer_id) as customer_count,
    SUM(c.total_purchases) as total_revenue,
    AVG(s.salary) as avg_staff_salary
FROM Customer c
INNER JOIN Staff s ON c.staff_id = s.staff_id
GROUP BY c.account_status
ORDER BY total_revenue DESC;

-- Query 20: Cross-city analysis (Staff city vs Customer city)
SELECT 
    s.city as staff_city,
    c.city as customer_city,
    COUNT(*) as transaction_count,
    SUM(c.total_purchases) as total_purchases
FROM Customer c
INNER JOIN Staff s ON c.staff_id = s.staff_id
WHERE s.city = c.city
GROUP BY s.city, c.city;

-- Query 21: ROW_NUMBER - Rank all managers by salary
SELECT 
    ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num,
    manager_name,
    department,
    salary
FROM Manager;

-- Query 22: DENSE_RANK - Rank managers by performance rating
SELECT 
    DENSE_RANK() OVER (ORDER BY performance_rating DESC),
    manager_name,
    department,
    performance_rating,
    salary
FROM Manager;

-- Query 23: RANK - Rank staff by salary within each department
SELECT 
    department,
    staff_name,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank
FROM Staff
ORDER BY department, salary_rank;

-- Query 24: ROW_NUMBER with PARTITION - Number customers by city
SELECT 
    city,
    customer_name,
    total_purchases,
    ROW_NUMBER() OVER (PARTITION BY city ORDER BY total_purchases DESC) as city_rank
FROM Customer
ORDER BY city, city_rank;

-- Query 25: DENSE_RANK - Rank customers by loyalty points
SELECT 
    DENSE_RANK() OVER (ORDER BY loyalty_points DESC) as loyalty_rank,
    customer_name,
    loyalty_points,
    total_purchases,
    account_status
FROM Customer;

-- Query 26: Combined ROW_NUMBER, RANK, DENSE_RANK comparison
SELECT 
    staff_name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num,
    RANK() OVER (ORDER BY salary DESC),
    DENSE_RANK() OVER (ORDER BY salary DESC)
FROM Staff;

-- Query 27: Ranking with window functions - Top 3 staff per department
SELECT * FROM (
    SELECT 
        department,
        staff_name,
        salary,
        DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) as dept_rank
    FROM Staff
) ranked
WHERE dept_rank <= 3
ORDER BY department, dept_rank;

-- Query 28: Percentile ranking - Customer purchase percentiles
SELECT 
    customer_name,
    total_purchases,
    PERCENT_RANK() OVER (ORDER BY total_purchases),
    ROUND(PERCENT_RANK() OVER (ORDER BY total_purchases) * 100, 2) as percentile
FROM Customer
ORDER BY total_purchases DESC;

-- Query 29: Running total with window functions
SELECT 
    m.manager_name,
    m.department,
    m.salary,
    SUM(m.salary) OVER (ORDER BY m.salary DESC 
                        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total,
    ROW_NUMBER() OVER (ORDER BY salary DESC) as position
FROM Manager m;

-- Query 30: Complex ranking - Staff ranking with multiple criteria
SELECT 
    s.staff_name,
    s.department,
    s.salary,
    s.hire_date,
    DENSE_RANK() OVER (ORDER BY s.salary DESC, s.hire_date ASC) as overall_rank,
    RANK() OVER (PARTITION BY s.department ORDER BY s.salary DESC) as dept_salary_rank,
    ROW_NUMBER() OVER (PARTITION BY YEAR(s.hire_date) ORDER BY s.salary DESC) as year_salary_rank
FROM Staff s
ORDER BY overall_rank;

