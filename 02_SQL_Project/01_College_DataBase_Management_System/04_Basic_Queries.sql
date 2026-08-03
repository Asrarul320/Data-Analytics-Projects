USE ShantiInstitute;

-- ==========================================================
-- BASIC SQL QUERIES
-- ==========================================================

-- ----------------------------------------------------------
-- Query 1: Display all departments
-- ----------------------------------------------------------
SELECT *
FROM Departments;

-- ----------------------------------------------------------
-- Query 2: Display all courses
-- ----------------------------------------------------------
SELECT *
FROM Courses;

-- ----------------------------------------------------------
-- Query 3: Display all students
-- ----------------------------------------------------------
SELECT *
FROM Students;

-- ----------------------------------------------------------
-- Query 4: Display all subjects
-- ----------------------------------------------------------
SELECT *
FROM Subjects;

-- ----------------------------------------------------------
-- Query 5: Display all semesters
-- ----------------------------------------------------------
SELECT *
FROM Semesters;

-- ----------------------------------------------------------
-- Query 6: Display student names and roll numbers
-- ----------------------------------------------------------
SELECT
    name,
    roll_no
FROM Students;

-- ----------------------------------------------------------
-- Query 7: Display unique addresses
-- ----------------------------------------------------------
SELECT DISTINCT address
FROM Students;

-- ----------------------------------------------------------
-- Query 8: Display students admitted after 01-Aug-2024
-- ----------------------------------------------------------
SELECT *
FROM Students
WHERE admission_date > '2024-08-01';

-- ----------------------------------------------------------
-- Query 9: Display BCA students
-- ----------------------------------------------------------
SELECT *
FROM Students
WHERE course_id = 1;

-- ----------------------------------------------------------
-- Query 10: Display students born after 01-Jan-2003
-- ----------------------------------------------------------
SELECT
    name,
    dob
FROM Students
WHERE dob > '2003-01-01';

-- ----------------------------------------------------------
-- Query 11: Display students ordered by name
-- ----------------------------------------------------------
SELECT *
FROM Students
ORDER BY name;

-- ----------------------------------------------------------
-- Query 12: Display students ordered by admission date
-- ----------------------------------------------------------
SELECT *
FROM Students
ORDER BY admission_date DESC;

-- ----------------------------------------------------------
-- Query 13: Display first 10 students
-- ----------------------------------------------------------
SELECT *
FROM Students
LIMIT 10;

-- ----------------------------------------------------------
-- Query 14: Count total students
-- ----------------------------------------------------------
SELECT COUNT(*) AS Total_Students
FROM Students;

-- ----------------------------------------------------------
-- Query 15: Count total courses
-- ----------------------------------------------------------
SELECT COUNT(*) AS Total_Courses
FROM Courses;

-- ----------------------------------------------------------
-- Query 16: Display highest department fee
-- ----------------------------------------------------------
SELECT MAX(dept_fees) AS Highest_Fee
FROM Departments;

-- ----------------------------------------------------------
-- Query 17: Display lowest department fee
-- ----------------------------------------------------------
SELECT MIN(dept_fees) AS Lowest_Fee
FROM Departments;

-- ----------------------------------------------------------
-- Query 18: Display average department fee
-- ----------------------------------------------------------
SELECT AVG(dept_fees) AS Average_Fee
FROM Departments;

-- ----------------------------------------------------------
-- Query 19: Display total department fees
-- ----------------------------------------------------------
SELECT SUM(dept_fees) AS Total_Department_Fees
FROM Departments;

-- ----------------------------------------------------------
-- Query 20: Display students whose name starts with 'A'
-- ----------------------------------------------------------
SELECT *
FROM Students
WHERE name LIKE 'A%';