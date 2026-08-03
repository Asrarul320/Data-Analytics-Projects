-- File Name   : 03_Insert_Data.sql
-- Project     : College Management System
-- Database    : ShantiInstitute
-- QUERIES     : INTERMEDIATE SQL QUERIES

USE ShantiInstitute;

-- ----------------------------------------------------------
-- Query 1: Display student name with course name
-- ----------------------------------------------------------
SELECT
    s.student_id,
    s.name,
    c.course_name
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id;

-- ----------------------------------------------------------
-- Query 2: Display course name with department name
-- ----------------------------------------------------------
SELECT
    c.course_name,
    d.dept_name
FROM Courses AS c
INNER JOIN Departments AS d
ON c.dept_id = d.dept_id;

-- ----------------------------------------------------------
-- Query 3: Display student name, roll number and department
-- ----------------------------------------------------------
SELECT
    s.name,
    s.roll_no,
    d.dept_name
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id
INNER JOIN Departments AS d
ON c.dept_id = d.dept_id;

-- ----------------------------------------------------------
-- Query 4: Display student fee payment details
-- ----------------------------------------------------------
SELECT
    s.name,
    s.roll_no,
    f.amount,
    f.payment_status,
    f.payment_date
FROM Students AS s
INNER JOIN Fees AS f
ON s.student_id = f.student_id;

-- ----------------------------------------------------------
-- Query 5: Display student marks
-- ----------------------------------------------------------
SELECT
    s.name,
    m.math_marks,
    m.programming_marks,
    m.computer_fundamentals_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id;

-- ----------------------------------------------------------
-- Query 6: Display semester details with course name
-- ----------------------------------------------------------
SELECT
    c.course_name,
    sem.semester_number,
    sem.year
FROM Courses AS c
INNER JOIN Semesters AS sem
ON c.course_id = sem.course_id;

-- ----------------------------------------------------------
-- Query 7: Display subject name with semester number
-- ----------------------------------------------------------
SELECT
    sub.subject_name,
    sem.semester_number
FROM Subjects AS sub
INNER JOIN Semesters AS sem
ON sub.semester_id = sem.semester_id;

-- ----------------------------------------------------------
-- Query 8: Display all students with their fee status
-- ----------------------------------------------------------
SELECT
    s.name,
    c.course_name,
    f.payment_status
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id
INNER JOIN Fees AS f
ON s.student_id = f.student_id;

-- ----------------------------------------------------------
-- Query 9: Display all courses with department fees
-- ----------------------------------------------------------
SELECT
    c.course_name,
    d.dept_name,
    d.dept_fees
FROM Courses AS c
INNER JOIN Departments AS d
ON c.dept_id = d.dept_id;

-- ----------------------------------------------------------
-- Query 10: Display complete student information
-- ----------------------------------------------------------
SELECT
    s.student_id,
    s.name,
    s.roll_no,
    c.course_name,
    d.dept_name,
    f.payment_status
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id
INNER JOIN Departments AS d
ON c.dept_id = d.dept_id
INNER JOIN Fees AS f
ON s.student_id = f.student_id;



-- ----------------------------------------------------------
-- Query 11: Count students in each course
-- ----------------------------------------------------------
SELECT
    c.course_name,
    COUNT(s.student_id) AS total_students
FROM Courses AS c
INNER JOIN Students AS s
ON c.course_id = s.course_id
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Query 12: Count courses in each department
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    COUNT(c.course_id) AS total_courses
FROM Departments AS d
INNER JOIN Courses AS c
ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

-- ----------------------------------------------------------
-- Query 13: Total fees collected course-wise
-- ----------------------------------------------------------
SELECT
    c.course_name,
    SUM(f.amount) AS total_fees
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id
INNER JOIN Fees AS f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Paid'
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Query 14: Average fee paid course-wise
-- ----------------------------------------------------------
SELECT
    c.course_name,
    AVG(f.amount) AS average_fee
FROM Students AS s
INNER JOIN Courses AS c
ON s.course_id = c.course_id
INNER JOIN Fees AS f
ON s.student_id = f.student_id
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Query 15: Highest department fee
-- ----------------------------------------------------------
SELECT
    dept_name,
    dept_fees
FROM Departments
WHERE dept_fees =
(
    SELECT MAX(dept_fees)
    FROM Departments
);

-- ----------------------------------------------------------
-- Query 16: Total students in each department
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    COUNT(s.student_id) AS total_students
FROM Departments AS d
INNER JOIN Courses AS c
ON d.dept_id = c.dept_id
INNER JOIN Students AS s
ON c.course_id = s.course_id
GROUP BY d.dept_name;

-- ----------------------------------------------------------
-- Query 17: Courses having more than 5 students
-- ----------------------------------------------------------
SELECT
    c.course_name,
    COUNT(s.student_id) AS total_students
FROM Courses AS c
INNER JOIN Students AS s
ON c.course_id = s.course_id
GROUP BY c.course_name
HAVING COUNT(s.student_id) > 5;

-- ----------------------------------------------------------
-- Query 18: Number of paid and pending fee records
-- ----------------------------------------------------------
SELECT
    payment_status,
    COUNT(*) AS total_records
FROM Fees
GROUP BY payment_status;

-- ----------------------------------------------------------
-- Query 19: Number of students from each city
-- ----------------------------------------------------------
SELECT
    address,
    COUNT(*) AS total_students
FROM Students
GROUP BY address
ORDER BY total_students DESC;

-- ----------------------------------------------------------
-- Query 20: Department-wise total fees
-- ----------------------------------------------------------
SELECT
    d.dept_name,
    SUM(f.amount) AS total_collection
FROM Departments AS d
INNER JOIN Courses AS c
ON d.dept_id = c.dept_id
INNER JOIN Students AS s
ON c.course_id = s.course_id
INNER JOIN Fees AS f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Paid'
GROUP BY d.dept_name;


-- ----------------------------------------------------------
-- Query 21: Display total marks of each student
-- ----------------------------------------------------------
SELECT
    s.student_id,
    s.name,
    (
        m.math_marks +
        m.programming_marks +
        m.computer_fundamentals_marks +
        m.management_marks +
        m.practical_cfo_marks +
        m.business_communication_marks +
        m.practical_programming_marks +
        m.environmental_studies_marks
    ) AS total_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id;

-- ----------------------------------------------------------
-- Query 22: Display average marks of each student
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
        2
    ) AS average_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id;

-- ----------------------------------------------------------
-- Query 23: Display Top 5 students based on total marks
-- ----------------------------------------------------------
SELECT
    s.name,
    (
        m.math_marks +
        m.programming_marks +
        m.computer_fundamentals_marks +
        m.management_marks +
        m.practical_cfo_marks +
        m.business_communication_marks +
        m.practical_programming_marks +
        m.environmental_studies_marks
    ) AS total_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id
ORDER BY total_marks DESC
LIMIT 5;

-- ----------------------------------------------------------
-- Query 24: Display Bottom 5 students based on total marks
-- ----------------------------------------------------------
SELECT
    s.name,
    (
        m.math_marks +
        m.programming_marks +
        m.computer_fundamentals_marks +
        m.management_marks +
        m.practical_cfo_marks +
        m.business_communication_marks +
        m.practical_programming_marks +
        m.environmental_studies_marks
    ) AS total_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id
ORDER BY total_marks
LIMIT 5;

-- ----------------------------------------------------------
-- Query 25: Display highest marks in Mathematics
-- ----------------------------------------------------------
SELECT
    MAX(math_marks) AS highest_math_marks
FROM Marks;

-- ----------------------------------------------------------
-- Query 26: Display lowest marks in Mathematics
-- ----------------------------------------------------------
SELECT
    MIN(math_marks) AS lowest_math_marks
FROM Marks;

-- ----------------------------------------------------------
-- Query 27: Display average Mathematics marks
-- ----------------------------------------------------------
SELECT
    ROUND(AVG(math_marks),2) AS average_math_marks
FROM Marks;

-- ----------------------------------------------------------
-- Query 28: Display students scoring more than 80 in Programming
-- ----------------------------------------------------------
SELECT
    s.name,
    m.programming_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id
WHERE m.programming_marks > 80;

-- ----------------------------------------------------------
-- Query 29: Display students scoring below 60 in Mathematics
-- ----------------------------------------------------------
SELECT
    s.name,
    m.math_marks
FROM Students AS s
INNER JOIN Marks AS m
ON s.student_id = m.student_id
WHERE m.math_marks < 60;

-- ----------------------------------------------------------
-- Query 30: Display students whose average marks are greater than 75
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
        2
    ) AS average_marks
FROM Students AS s
INNER JOIN Marks AS m
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
) / 8 > 75
ORDER BY average_marks DESC;


