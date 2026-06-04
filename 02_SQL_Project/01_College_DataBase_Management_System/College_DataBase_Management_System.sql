CREATE DATABASE ShantiInstitute;
USE ShantiInstitute;










-- Departments
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL,
    dept_fees DECIMAL(10,2) NOT NULL
);
INSERT INTO Departments (dept_name, dept_fees) VALUES
('BCA Department', 20000),
('Polytechnic Department', 30000),
('B Tech Department', 50000);










-- Courses
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,
    duration INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
    ON DELETE CASCADE
);
INSERT INTO Courses (course_name, dept_id, duration) VALUES
('BCA', 1, 3),
('BBA', 1, 3),
('B-COM', 1, 3),
('MBA', 1, 2),
('BA', 1, 3),
('Polytechnic Civil', 2, 3),
('Polytechnic Mechanical', 2, 3),
('Polytechnic Electrical', 2, 3),
('Polytechnic Computer Science', 2, 3),
('B Tech Civil', 3, 4),
('B Tech Mechanical', 3, 4),
('B Tech Electrical', 3, 4),
('B Tech Computer Science', 3, 4);










-- Students
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_no VARCHAR(50) UNIQUE,
    registration_no VARCHAR(50) UNIQUE,
    phone_no VARCHAR(15),
    course_id INT,
    dob DATE,
    admission_date DATE,
    address VARCHAR(255),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    ON DELETE CASCADE
);
INSERT INTO Students 
(name, roll_no, registration_no, phone_no, course_id, dob, admission_date, address) 
VALUES
('Asrarul Haque', 'BCA0022', 'REG001', '9999999999', 1, '2000-01-01', '2024-09-01', 'Dist-Basti'),
('Om Yadav', 'BCA0052', 'REG002', '8888888888', 1, '2000-02-01', '2024-09-02', 'Dist-Baghpat'),
('Ashish Yadav', 'BCA0020', 'REG003', '7777777777', 1, '1999-12-10', '2024-09-05', 'Dist-Baghpat');










-- Semesters
CREATE TABLE Semesters (
    semester_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    semester_number INT,
    year INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    ON DELETE CASCADE
);
INSERT INTO Semesters (course_id, semester_number, year) VALUES
-- BCA
(1,1,1),(1,2,1),(1,3,2),(1,4,2),(1,5,3),(1,6,3),

-- BBA
(2,1,1),(2,2,1),(2,3,2),(2,4,2),(2,5,3),(2,6,3),

-- B-COM
(3,1,1),(3,2,1),(3,3,2),(3,4,2),(3,5,3),(3,6,3),

-- MBA
(4,1,1),(4,2,1),(4,3,2),(4,4,2),

-- BA
(5,1,1),(5,2,1),(5,3,2),(5,4,2),(5,5,3),(5,6,3);










-- Marks (Fixed)
CREATE TABLE Marks (
    marks_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    semester_id INT,
    
    math_marks INT,
    programming_marks INT,
    computer_fundamentals_marks INT,
    management_marks INT,
    practical_cfo_marks INT,
    business_communication_marks INT,
    practical_programming_marks INT,
    environmental_studies_marks INT,

    total_marks INT GENERATED ALWAYS AS (
        math_marks + programming_marks + computer_fundamentals_marks +
        management_marks + practical_cfo_marks + business_communication_marks +
        practical_programming_marks + environmental_studies_marks
    ) STORED,

    FOREIGN KEY (student_id) REFERENCES Students(student_id)
    ON DELETE CASCADE,

    FOREIGN KEY (semester_id) REFERENCES Semesters(semester_id)
    ON DELETE CASCADE
);
INSERT INTO Marks 
(student_id, semester_id, math_marks, programming_marks, computer_fundamentals_marks,
management_marks, practical_cfo_marks, business_communication_marks,
practical_programming_marks, environmental_studies_marks)
VALUES
(1, 1, 62, 60, 55, 62, 39, 66, 40, 50),
(2, 1, 70, 65, 60, 68, 45, 72, 50, 55),
(3, 1, 58, 52, 49, 60, 35, 61, 38, 45);




