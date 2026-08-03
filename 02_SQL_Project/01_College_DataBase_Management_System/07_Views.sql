-- File Name   : 03_Insert_Data.sql
-- Project     : College Management System
-- Database    : ShantiInstitute
-- VIEWS   


USE ShantiInstitute;

-- ==========================================================
-- VIEWS
-- ==========================================================

-- ----------------------------------------------------------
-- View 1 : Student Details View
-- ----------------------------------------------------------

CREATE VIEW Student_Details_View AS

SELECT
    s.student_id,
    s.name,
    s.roll_no,
    c.course_name,
    d.dept_name,
    s.phone_no,
    s.admission_date
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id
INNER JOIN Departments d
ON c.dept_id = d.dept_id;


-- Display View
SELECT * FROM Student_Details_View;

-- ----------------------------------------------------------
-- View 2 : Fee Status View
-- ----------------------------------------------------------

CREATE VIEW Fee_Status_View AS

SELECT
    s.student_id,
    s.name,
    c.course_name,
    f.amount,
    f.payment_status,
    f.payment_date
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id;


-- Display View
SELECT * FROM Fee_Status_View;

-- ----------------------------------------------------------
-- View 3 : Student Marks View
-- ----------------------------------------------------------

CREATE VIEW Student_Marks_View AS

SELECT
    s.student_id,
    s.name,
    c.course_name,
    m.math_marks,
    m.programming_marks,
    m.computer_fundamentals_marks,
    m.management_marks,
    m.business_communication_marks
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id
INNER JOIN Marks m
ON s.student_id = m.student_id;


-- Display View
SELECT * FROM Student_Marks_View;

-- ----------------------------------------------------------
-- View 4 : Course Student Count View
-- ----------------------------------------------------------

CREATE VIEW Course_Student_Count_View AS

SELECT
    c.course_name,
    COUNT(s.student_id) AS total_students
FROM Courses c
INNER JOIN Students s
ON c.course_id = s.course_id
GROUP BY c.course_name;


-- Display View
SELECT * FROM Course_Student_Count_View;

-- ----------------------------------------------------------
-- View 5 : Department Revenue View
-- ----------------------------------------------------------

CREATE VIEW Department_Revenue_View AS

SELECT
    d.dept_name,
    SUM(f.amount) AS total_revenue
FROM Departments d
INNER JOIN Courses c
ON d.dept_id = c.dept_id
INNER JOIN Students s
ON c.course_id = s.course_id
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status = 'Paid'
GROUP BY d.dept_name;


-- Display View
SELECT * FROM Department_Revenue_View;