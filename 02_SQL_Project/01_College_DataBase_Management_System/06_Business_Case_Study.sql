-- File Name   : 03_Insert_Data.sql
-- Project     : College Management System
-- Database    : ShantiInstitute
-- QUERIES     : BUSINESS CASE STUDY QUERIES

USE ShantiInstitute;

-- ==========================================================
-- 
-- ==========================================================

-- ----------------------------------------------------------
-- Business Question 1
-- Which course has the highest number of students?
-- ----------------------------------------------------------
SELECT
    c.course_name,
    COUNT(s.student_id) AS total_students
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY c.course_name
ORDER BY total_students DESC;

-- ----------------------------------------------------------
-- Business Question 2
-- Which department has the highest number of students?
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM Departments d
INNER JOIN Courses c
ON d.dept_id = c.dept_id
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY d.dept_name
ORDER BY total_students DESC;

-- ----------------------------------------------------------
-- Business Question 3
-- Show students whose fees are pending.
-- ----------------------------------------------------------
SELECT
    s.student_id,
    s.name,
    c.course_name,
    f.amount,
    f.payment_status
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Pending';

-- ----------------------------------------------------------
-- Business Question 4
-- Calculate total fee collection.
-- ----------------------------------------------------------
SELECT
    SUM(amount) AS total_fee_collection
FROM Fees
WHERE payment_status = 'Paid';

-- ----------------------------------------------------------
-- Business Question 5
-- Count Paid vs Pending fee records.
-- ----------------------------------------------------------
SELECT
    payment_status,
    COUNT(*) AS total_students
FROM Fees
GROUP BY payment_status;

-- ----------------------------------------------------------
-- Business Question 6
-- Which city has the highest number of students?
-- ----------------------------------------------------------
SELECT
    address,
    COUNT(*) AS total_students
FROM Students
GROUP BY address
ORDER BY total_students DESC;

-- ----------------------------------------------------------
-- Business Question 7
-- Show Top 5 students based on average marks.
-- ----------------------------------------------------------
SELECT
    s.name,

    ROUND(
        (
        m.math_marks +
        m.programming_marks +
        m.computer_fundamentals_marks +
        m.management_marks +
        m.practical_cfo_marks +
        m.business_communication_marks +
        m.practical_programming_marks +
        m.environmental_studies_marks
        ) / 8,2
    ) AS average_marks

FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id

ORDER BY average_marks DESC

LIMIT 5;

-- ----------------------------------------------------------
-- Business Question 8
-- Show Bottom 5 students based on average marks.
-- ----------------------------------------------------------
SELECT
    s.name,

    ROUND(
        (
        m.math_marks +
        m.programming_marks +
        m.computer_fundamentals_marks +
        m.management_marks +
        m.practical_cfo_marks +
        m.business_communication_marks +
        m.practical_programming_marks +
        m.environmental_studies_marks
        ) / 8,2
    ) AS average_marks

FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id

ORDER BY average_marks

LIMIT 5;

-- ----------------------------------------------------------
-- Business Question 9
-- Which course has the highest average fee collection?
-- ----------------------------------------------------------
SELECT
    c.course_name,
    AVG(f.amount) AS average_fee
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id
GROUP BY c.course_name
ORDER BY average_fee DESC;

-- ----------------------------------------------------------
-- Business Question 10
-- Display total admissions in each course.
-- ----------------------------------------------------------
SELECT
    c.course_name,
    COUNT(s.student_id) AS total_admissions
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY c.course_name
ORDER BY total_admissions DESC;


-- ----------------------------------------------------------
-- Business Question 11
-- Display total fee collection department-wise.
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    SUM(f.amount) AS total_fee_collection
FROM Departments d
INNER JOIN Courses c
    ON d.dept_id = c.dept_id
INNER JOIN Students s
    ON c.course_id = s.course_id
INNER JOIN Fees f
    ON s.student_id = f.student_id
WHERE f.payment_status = 'Paid'
GROUP BY d.dept_name;

-- ----------------------------------------------------------
-- Business Question 12
-- Display total fee pending department-wise.
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    COUNT(f.fee_id) AS pending_students
FROM Departments d
INNER JOIN Courses c
    ON d.dept_id = c.dept_id
INNER JOIN Students s
    ON c.course_id = s.course_id
INNER JOIN Fees f
    ON s.student_id = f.student_id
WHERE f.payment_status = 'Pending'
GROUP BY d.dept_name;

-- ----------------------------------------------------------
-- Business Question 13
-- Find students who scored more than 85 marks in Mathematics.
-- ----------------------------------------------------------
SELECT
    s.name,
    c.course_name,
    m.math_marks
FROM Students s
INNER JOIN Courses c
    ON s.course_id = c.course_id
INNER JOIN Marks m
    ON s.student_id = m.student_id
WHERE m.math_marks > 85
ORDER BY m.math_marks DESC;

-- ----------------------------------------------------------
-- Business Question 14
-- Display average Mathematics marks course-wise.
-- ----------------------------------------------------------
SELECT
    c.course_name,
    ROUND(AVG(m.math_marks),2) AS average_math_marks
FROM Courses c
INNER JOIN Students s
    ON c.course_id = s.course_id
INNER JOIN Marks m
    ON s.student_id = m.student_id
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Business Question 15
-- Find students whose average marks are below 60.
-- ----------------------------------------------------------
SELECT
    s.name,
    ROUND(
        (
            m.math_marks +
            m.programming_marks +
            m.computer_fundamentals_marks +
            m.management_marks +
            m.practical_cfo_marks +
            m.business_communication_marks +
            m.practical_programming_marks +
            m.environmental_studies_marks
        ) / 8,
    2) AS average_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE
(
    m.math_marks +
    m.programming_marks +
    m.computer_fundamentals_marks +
    m.management_marks +
    m.practical_cfo_marks +
    m.business_communication_marks +
    m.practical_programming_marks +
    m.environmental_studies_marks
) / 8 < 60;

-- ----------------------------------------------------------
-- Business Question 16
-- Display admission count date-wise.
-- ----------------------------------------------------------
SELECT
    admission_date,
    COUNT(student_id) AS total_admissions
FROM Students
GROUP BY admission_date
ORDER BY admission_date;

-- ----------------------------------------------------------
-- Business Question 17
-- Display course-wise oldest student.
-- ----------------------------------------------------------
SELECT
    c.course_name,
    MIN(s.dob) AS oldest_student_dob
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Business Question 18
-- Display total students in each department.
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM Departments d
INNER JOIN Courses c
ON d.dept_id = c.dept_id
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY d.dept_name;

-- ----------------------------------------------------------
-- Business Question 19
-- Display total paid amount course-wise.
-- ----------------------------------------------------------
SELECT
    c.course_name,
    SUM(f.amount) AS total_paid_amount
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Paid'
GROUP BY c.course_name
ORDER BY total_paid_amount DESC;

-- ----------------------------------------------------------
-- Business Question 20
-- Display total pending students course-wise.
-- ----------------------------------------------------------
SELECT
    c.course_name,
    COUNT(*) AS pending_students
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Pending'
GROUP BY c.course_name
ORDER BY pending_students DESC;