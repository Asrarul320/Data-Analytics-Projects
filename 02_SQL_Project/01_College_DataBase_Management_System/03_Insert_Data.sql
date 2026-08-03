-- File Name   : 03_Insert_Data.sql
-- Project     : College Management System
-- Database    : ShantiInstitute
-- Inster Data : Departments, Courses, Students, Students, Subjects, Marks, Fees.


-- Departments Data
INSERT INTO Departments (dept_name, dept_fees)
VALUES
('BCA Department',20000),
('Polytechnic Department',30000),
('B.Tech Department',50000);


-- Courses Data
INSERT INTO Courses (course_name, dept_id, duration)
VALUES
('BCA',1,3),
('BBA',1,3),
('B.Com',1,3),
('MBA',1,2),
('BA',1,3),

('Polytechnic Civil',2,3),
('Polytechnic Mechanical',2,3),
('Polytechnic Electrical',2,3),
('Polytechnic Computer Science',2,3),

('B.Tech Civil',3,4),
('B.Tech Mechanical',3,4),
('B.Tech Electrical',3,4),
('B.Tech Computer Science',3,4);

-- Semester Data
INSERT INTO Semesters
(course_id, semester_number, year)
VALUES

-- BCA
(1,1,1),
(1,2,1),
(1,3,2),
(1,4,2),
(1,5,3),
(1,6,3),

-- BBA
(2,1,1),
(2,2,1),
(2,3,2),
(2,4,2),
(2,5,3),
(2,6,3),

-- B.Com
(3,1,1),
(3,2,1),
(3,3,2),
(3,4,2),
(3,5,3),
(3,6,3),

-- MBA
(4,1,1),
(4,2,1),
(4,3,2),
(4,4,2),

-- BA
(5,1,1),
(5,2,1),
(5,3,2),
(5,4,2),
(5,5,3),
(5,6,3);



-- Subjects Data
INSERT INTO Subjects (subject_name, semester_id)
VALUES

-- BCA Semester 1
('Mathematics',1),
('Programming in C',1),
('Computer Fundamentals',1),
('Business Communication',1),

-- BCA Semester 2
('Data Structures',2),
('Database Management System',2),
('Operating System',2),
('Environmental Studies',2),

-- BCA Semester 3
('Java Programming',3),
('Computer Networks',3),
('Software Engineering',3),
('Web Development',3),

-- BCA Semester 4
('Python Programming',4),
('Data Analytics',4),
('Computer Graphics',4),
('Management Information System',4),

-- BCA Semester 5
('Artificial Intelligence',5),
('Cloud Computing',5),
('Cyber Security',5),
('Project Management',5),

-- BCA Semester 6
('Machine Learning',6),
('Big Data',6),
('Internship',6),
('Major Project',6);




-- Students Data (Batch 1)
INSERT INTO Students
(name, roll_no, registration_no, phone_no, course_id, dob, admission_date, address)
VALUES
('Asrarul Haque','BCA24001','REG24001','9876543210',1,'2003-01-15','2024-08-01','Basti, Uttar Pradesh'),
('Om Yadav','BCA24002','REG24002','9876543211',1,'2002-11-20','2024-08-01','Baghpat, Uttar Pradesh'),
('Ashish Yadav','BCA24003','REG24003','9876543212',1,'2003-03-18','2024-08-01','Baghpat, Uttar Pradesh'),
('Rahul Kumar','BCA24004','REG24004','9876543213',1,'2002-09-12','2024-08-02','Lucknow, Uttar Pradesh'),
('Aman Singh','BCA24005','REG24005','9876543214',1,'2003-05-30','2024-08-02','Kanpur, Uttar Pradesh'),
('Priya Sharma','BCA24006','REG24006','9876543215',1,'2003-07-25','2024-08-03','Delhi'),
('Neha Verma','BCA24007','REG24007','9876543216',1,'2002-12-10','2024-08-03','Ghaziabad, Uttar Pradesh'),
('Rohit Gupta','BCA24008','REG24008','9876543217',1,'2003-02-28','2024-08-04','Noida, Uttar Pradesh'),
('Anjali Mishra','BCA24009','REG24009','9876543218',1,'2003-08-17','2024-08-04','Prayagraj, Uttar Pradesh'),
('Vikas Patel','BCA24010','REG24010','9876543219',1,'2002-10-08','2024-08-05','Varanasi, Uttar Pradesh'),
('Sneha Gupta','BCA24011','REG24011','9876543220',1,'2003-04-15','2024-08-05','Delhi'),
('Karan Singh','BCA24012','REG24012','9876543221',1,'2002-08-11','2024-08-06','Meerut, Uttar Pradesh'),
('Pooja Verma','BCA24013','REG24013','9876543222',1,'2003-06-18','2024-08-06','Ghaziabad, Uttar Pradesh'),
('Mohit Kumar','BCA24014','REG24014','9876543223',1,'2002-01-29','2024-08-07','Noida, Uttar Pradesh'),
('Riya Sharma','BCA24015','REG24015','9876543224',1,'2003-09-10','2024-08-07','Lucknow, Uttar Pradesh'),
('Aakash Mishra','BBA24016','REG24016','9876543225',2,'2003-03-22','2024-08-08','Prayagraj, Uttar Pradesh'),
('Sakshi Jain','BBA24017','REG24017','9876543226',2,'2002-10-12','2024-08-08','Agra, Uttar Pradesh'),
('Nitin Yadav','BBA24018','REG24018','9876543227',2,'2003-02-14','2024-08-09','Mathura, Uttar Pradesh'),
('Komal Singh','BBA24019','REG24019','9876543228',2,'2003-07-09','2024-08-09','Aligarh, Uttar Pradesh'),
('Abhishek Sharma','BBA24020','REG24020','9876543229',2,'2002-12-05','2024-08-10','Kanpur, Uttar Pradesh'),
('Deepak Kumar','BCA24021','REG24021','9876543230',1,'2003-01-11','2024-08-10','Delhi'),
('Nisha Singh','BCA24022','REG24022','9876543231',1,'2002-09-15','2024-08-11','Lucknow, Uttar Pradesh'),
('Arjun Verma','BCA24023','REG24023','9876543232',1,'2003-06-21','2024-08-11','Kanpur, Uttar Pradesh'),
('Simran Kaur','BCA24024','REG24024','9876543233',1,'2002-11-30','2024-08-12','Noida, Uttar Pradesh'),
('Harsh Gupta','BCA24025','REG24025','9876543234',1,'2003-04-08','2024-08-12','Ghaziabad, Uttar Pradesh'),
('Rohit Singh','B.Com24026','REG24026','9876543235',3,'2003-03-17','2024-08-13','Agra, Uttar Pradesh'),
('Ananya Sharma','B.Com24027','REG24027','9876543236',3,'2002-10-19','2024-08-13','Meerut, Uttar Pradesh'),
('Saurabh Mishra','B.Com24028','REG24028','9876543237',3,'2003-05-23','2024-08-14','Varanasi, Uttar Pradesh'),
('Muskan Gupta','B.Com24029','REG24029','9876543238',3,'2003-08-02','2024-08-14','Prayagraj, Uttar Pradesh'),
('Ayush Yadav','B.Com24030','REG24030','9876543239',3,'2002-12-27','2024-08-15','Aligarh, Uttar Pradesh'),
('Priyanshu Singh','B.Com24031','REG24031','9876543240',3,'2003-02-13','2024-08-15','Delhi'),
('Kajal Verma','B.Com24032','REG24032','9876543241',3,'2002-07-09','2024-08-16','Lucknow, Uttar Pradesh'),
('Manish Kumar','B.Com24033','REG24033','9876543242',3,'2003-09-01','2024-08-16','Kanpur, Uttar Pradesh'),
('Shivani Sharma','B.Com24034','REG24034','9876543243',3,'2002-04-14','2024-08-17','Noida, Uttar Pradesh'),
('Vivek Gupta','B.Com24035','REG24035','9876543244',3,'2003-01-25','2024-08-17','Ghaziabad, Uttar Pradesh'),
('Aditya Singh','MBA24036','REG24036','9876543245',4,'2001-11-18','2024-08-18','Delhi'),
('Neha Kapoor','MBA24037','REG24037','9876543246',4,'2002-03-06','2024-08-18','Jaipur, Rajasthan'),
('Rahul Meena','MBA24038','REG24038','9876543247',4,'2001-08-28','2024-08-19','Kota, Rajasthan'),
('Pallavi Sharma','MBA24039','REG24039','9876543248',4,'2002-05-12','2024-08-19','Ajmer, Rajasthan'),
('Amit Saxena','MBA24040','REG24040','9876543249',4,'2001-10-04','2024-08-20','Alwar, Rajasthan'),
('Ritika Singh','MBA24041','REG24041','9876543250',4,'2002-01-16','2024-08-20','Delhi'),
('Ankit Verma','MBA24042','REG24042','9876543251',4,'2001-09-21','2024-08-21','Lucknow, Uttar Pradesh'),
('Sakshi Mishra','MBA24043','REG24043','9876543252',4,'2002-06-11','2024-08-21','Kanpur, Uttar Pradesh'),
('Hemant Gupta','MBA24044','REG24044','9876543253',4,'2001-12-30','2024-08-22','Noida, Uttar Pradesh'),
('Megha Sharma','MBA24045','REG24045','9876543254',4,'2002-04-27','2024-08-22','Ghaziabad, Uttar Pradesh'),
('Anjali Singh','BA24046','REG24046','9876543255',5,'2003-03-03','2024-08-23','Agra, Uttar Pradesh'),
('Ravi Kumar','BA24047','REG24047','9876543256',5,'2002-07-20','2024-08-23','Meerut, Uttar Pradesh'),
('Poonam Verma','BA24048','REG24048','9876543257',5,'2003-10-10','2024-08-24','Varanasi, Uttar Pradesh'),
('Arvind Yadav','BA24049','REG24049','9876543258',5,'2002-02-22','2024-08-24','Prayagraj, Uttar Pradesh'),
('Kusum Sharma','BA24050','REG24050','9876543259',5,'2003-05-15','2024-08-25','Aligarh, Uttar Pradesh');





-- Fees Data
INSERT INTO Fees
(student_id, amount, payment_date, payment_status, payment_mode)
VALUES

(1,20000,'2024-08-05','Paid','UPI'),
(2,20000,'2024-08-06','Paid','Cash'),
(3,20000,'2024-08-07','Paid','Card'),
(4,20000,'2024-08-08','Pending','UPI'),
(5,20000,'2024-08-09','Paid','Net Banking'),

(6,20000,'2024-08-10','Paid','UPI'),
(7,20000,'2024-08-11','Pending','Cash'),
(8,20000,'2024-08-12','Paid','Card'),
(9,20000,'2024-08-13','Paid','UPI'),
(10,20000,'2024-08-14','Paid','Cash'),

(11,20000,'2024-08-15','Paid','UPI'),
(12,20000,'2024-08-16','Pending','Card'),
(13,20000,'2024-08-17','Paid','Cash'),
(14,20000,'2024-08-18','Paid','Net Banking'),
(15,20000,'2024-08-19','Paid','UPI'),

(16,20000,'2024-08-20','Paid','Card'),
(17,20000,'2024-08-21','Pending','Cash'),
(18,20000,'2024-08-22','Paid','UPI'),
(19,20000,'2024-08-23','Paid','Card'),
(20,20000,'2024-08-24','Paid','Net Banking');





-- Marks Data (Semester 1)
INSERT INTO Marks
(student_id, semester_id, math_marks, programming_marks,
computer_fundamentals_marks, management_marks,
practical_cfo_marks, business_communication_marks,
practical_programming_marks, environmental_studies_marks)

VALUES

(1,1,78,82,75,80,85,74,88,79),
(2,1,69,73,71,76,80,70,84,72),
(3,1,85,90,88,84,91,82,93,86),
(4,1,58,64,60,62,70,61,72,65),
(5,1,72,78,74,76,82,73,85,77),

(6,1,81,85,79,83,88,80,90,82),
(7,1,66,69,68,70,75,67,78,69),
(8,1,75,80,77,79,84,76,87,78),
(9,1,90,92,89,91,94,88,95,90),
(10,1,63,68,65,67,72,64,75,66),

(11,1,77,81,76,80,86,75,88,79),
(12,1,55,60,58,61,66,57,68,60),
(13,1,83,87,84,86,90,82,91,85),
(14,1,71,74,73,75,81,72,83,74),
(15,1,88,91,87,89,93,86,94,88),

(16,7,74,79,76,78,84,75,86,77),
(17,7,62,66,64,67,73,63,75,65),
(18,7,80,84,81,83,88,79,90,82),
(19,7,69,72,70,73,78,68,80,71),
(20,7,86,89,85,88,92,84,93,87);