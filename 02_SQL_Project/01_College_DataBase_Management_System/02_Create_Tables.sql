-- File Name : 02_Create_Tables.sql
-- Project   : College Management System
-- Database  : ShantiInstitute
-- Tables    : Departments, Courses, Students, Students, Subjects, Marks, Fees.

USE ShantiInstitute;

-- 1. Departments Table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL,
    dept_fees DECIMAL(10,2) NOT NULL
);


-- 2. Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    dept_id INT NOT NULL,
    duration INT NOT NULL,

    FOREIGN KEY (dept_id)
    REFERENCES Departments(dept_id)
    ON DELETE CASCADE
);


-- 3. Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    roll_no VARCHAR(30) UNIQUE NOT NULL,
    registration_no VARCHAR(30) UNIQUE NOT NULL,
    phone_no VARCHAR(15),
    course_id INT NOT NULL,
    dob DATE,
    admission_date DATE,
    address VARCHAR(255),

    FOREIGN KEY (course_id)
    REFERENCES Courses(course_id)
    ON DELETE CASCADE
);


-- 4. Students Table
CREATE TABLE Semesters (
    semester_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    semester_number INT NOT NULL,
    year INT NOT NULL,

    FOREIGN KEY (course_id)
    REFERENCES Courses(course_id)
    ON DELETE CASCADE
);


-- 5. Subjects Table
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100) NOT NULL,
    semester_id INT NOT NULL,

    FOREIGN KEY (semester_id)
    REFERENCES Semesters(semester_id)
    ON DELETE CASCADE
);


-- 6. Marks Table
CREATE TABLE Marks (
    marks_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    semester_id INT NOT NULL,

    math_marks INT,
    programming_marks INT,
    computer_fundamentals_marks INT,
    management_marks INT,
    practical_cfo_marks INT,
    business_communication_marks INT,
    practical_programming_marks INT,
    environmental_studies_marks INT,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE,

    FOREIGN KEY (semester_id)
    REFERENCES Semesters(semester_id)
    ON DELETE CASCADE
);


-- 7. Fees Table
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE,
    payment_status VARCHAR(20) NOT NULL,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE
);