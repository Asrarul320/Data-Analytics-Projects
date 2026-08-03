USE ShantiInstitute;

-- ==========================================================
-- SQL INTERVIEW QUESTIONS
-- ==========================================================

-- ----------------------------------------------------------
-- Question 1
-- Display all students with their course name.
-- ----------------------------------------------------------

SELECT
    s.student_id,
    s.name,
    c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;

-- ----------------------------------------------------------
-- Question 2
-- Display students whose fees are pending.
-- ----------------------------------------------------------

SELECT
    s.student_id,
    s.name,
    f.amount,
    f.payment_status
FROM Students s
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.payment_status='Pending';

-- ----------------------------------------------------------
-- Question 3
-- Count total students in each course.
-- ----------------------------------------------------------

SELECT
    c.course_name,
    COUNT(*) AS total_students
FROM Courses c
INNER JOIN Students s
ON c.course_id=s.course_id
GROUP BY c.course_name;

-- ----------------------------------------------------------
-- Question 4
-- Find the highest Mathematics marks.
-- ----------------------------------------------------------

SELECT
MAX(math_marks) AS highest_marks
FROM Marks;

-- ----------------------------------------------------------
-- Question 5
-- Find the lowest Mathematics marks.
-- ----------------------------------------------------------

SELECT
MIN(math_marks) AS lowest_marks
FROM Marks;

-- ----------------------------------------------------------
-- Question 6
-- Display top 5 students based on Mathematics marks.
-- ----------------------------------------------------------

SELECT
s.name,
m.math_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id=m.student_id
ORDER BY m.math_marks DESC
LIMIT 5;

-- ----------------------------------------------------------
-- Question 7
-- Count total paid fee records.
-- ----------------------------------------------------------

SELECT
COUNT(*) AS paid_students
FROM Fees
WHERE payment_status='Paid';

-- ----------------------------------------------------------
-- Question 8
-- Count total pending fee records.
-- ----------------------------------------------------------

SELECT
COUNT(*) AS pending_students
FROM Fees
WHERE payment_status='Pending';

-- ----------------------------------------------------------
-- Question 9
-- Display average Mathematics marks.
-- ----------------------------------------------------------

SELECT
ROUND(AVG(math_marks),2) AS average_marks
FROM Marks;

-- ----------------------------------------------------------
-- Question 10
-- Display all students sorted by admission date.
-- ----------------------------------------------------------

SELECT
*
FROM Students
ORDER BY admission_date;


USE ShantiInstitute;

-- ==========================================================
-- SQL INTERVIEW QUESTIONS (PART - 2)
-- SUBQUERIES
-- ==========================================================

-- ----------------------------------------------------------
-- Question 11
-- Display students who scored above average
-- Mathematics marks.
-- ----------------------------------------------------------

SELECT
    s.name,
    m.math_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE m.math_marks >
(
    SELECT AVG(math_marks)
    FROM Marks
);

-- ----------------------------------------------------------
-- Question 12
-- Display students who scored the highest
-- Mathematics marks.
-- ----------------------------------------------------------

SELECT
    s.name,
    m.math_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE m.math_marks =
(
    SELECT MAX(math_marks)
    FROM Marks
);

-- ----------------------------------------------------------
-- Question 13
-- Display students who scored the lowest
-- Mathematics marks.
-- ----------------------------------------------------------

SELECT
    s.name,
    m.math_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE m.math_marks =
(
    SELECT MIN(math_marks)
    FROM Marks
);

-- ----------------------------------------------------------
-- Question 14
-- Display students whose fee amount is greater
-- than the average fee amount.
-- ----------------------------------------------------------

SELECT
    s.name,
    f.amount
FROM Students s
INNER JOIN Fees f
ON s.student_id = f.student_id
WHERE f.amount >
(
    SELECT AVG(amount)
    FROM Fees
);

-- ----------------------------------------------------------
-- Question 15
-- Display the course having the maximum number
-- of students.
-- ----------------------------------------------------------

SELECT
    course_name,
    total_students
FROM
(
    SELECT
        c.course_name,
        COUNT(s.student_id) AS total_students
    FROM Courses c
    INNER JOIN Students s
    ON c.course_id = s.course_id
    GROUP BY c.course_name
) AS CourseCount
WHERE total_students =
(
    SELECT MAX(total_students)
    FROM
    (
        SELECT COUNT(student_id) AS total_students
        FROM Students
        GROUP BY course_id
    ) AS MaxStudentCount
);

-- ----------------------------------------------------------
-- Question 16
-- Display students admitted on the earliest
-- admission date.
-- ----------------------------------------------------------

SELECT
    name,
    admission_date
FROM Students
WHERE admission_date =
(
    SELECT MIN(admission_date)
    FROM Students
);

-- ----------------------------------------------------------
-- Question 17
-- Display students admitted on the latest
-- admission date.
-- ----------------------------------------------------------

SELECT
    name,
    admission_date
FROM Students
WHERE admission_date =
(
    SELECT MAX(admission_date)
    FROM Students
);

-- ----------------------------------------------------------
-- Question 18
-- Display departments having the highest fee.
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
-- Question 19
-- Display students whose Mathematics marks
-- are below average.
-- ----------------------------------------------------------

SELECT
    s.name,
    m.math_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE m.math_marks <
(
    SELECT AVG(math_marks)
    FROM Marks
);

-- ----------------------------------------------------------
-- Question 20
-- Display students whose Programming marks
-- are above average.
-- ----------------------------------------------------------

SELECT
    s.name,
    m.programming_marks
FROM Students s
INNER JOIN Marks m
ON s.student_id = m.student_id
WHERE m.programming_marks >
(
    SELECT AVG(programming_marks)
    FROM Marks
);