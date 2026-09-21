USE university_academic;

INSERT INTO Department (dept_name, established_year, hod_id) VALUES
('Computer Science and Engineering', 2010, NULL),
('Artificial Intelligence and Machine Learning', 2020, NULL),
('Electronics and Communication Engineering', 2008, NULL);

INSERT INTO Faculty (first_name, last_name, designation, email, dept_id) VALUES
('Anil', 'Kumar', 'Professor', 'anil@uni.edu', 1),
('Meena', 'Rao', 'Associate Professor', 'meena@uni.edu', 1),
('Suresh', 'Babu', 'Assistant Professor', 'suresh@uni.edu', 2),
('Priya', 'Nair', 'Professor', 'priya@uni.edu', 3);

UPDATE Department SET hod_id = 1 WHERE dept_id = 1;
UPDATE Department SET hod_id = 3 WHERE dept_id = 2;
UPDATE Department SET hod_id = 4 WHERE dept_id = 3;

INSERT INTO Student (first_name, last_name, dob, email, address, dept_id) VALUES
('Ravi', 'Kumar', '2002-05-12', 'ravi@uni.edu', 'Main Street, City, 500001', 1),
('Priya', 'Sharma', '2003-08-22', 'priya.student@uni.edu', 'Lake Road, City, 500002', 2),
('Arjun', 'Reddy', '2002-11-30', 'arjun@uni.edu', 'Temple Road, City, 500003', 1),
('Sneha', 'Patel', '2003-03-18', 'sneha@uni.edu', 'Park Street, City, 500004', 2),
('Rahul', 'Singh', '2002-12-05', 'rahul@uni.edu', 'College Road, City, 500005', 3);

INSERT INTO Student_Phone (student_id, phone) VALUES
(1, '9876543210'),
(1, '9123456780'),
(2, '9876501234'),
(3, '9988776655'),
(4, '9000011111'),
(5, '9111122222');

INSERT INTO Faculty_Qualification (faculty_id, qualification) VALUES
(1, 'PhD in Computer Science'),
(1, 'M.Tech'),
(2, 'PhD in Information Technology'),
(3, 'PhD in Artificial Intelligence'),
(4, 'PhD in Electronics');

INSERT INTO Course (course_name, course_code, credits, dept_id, faculty_id) VALUES
('Database Management Systems', 'CS401', 4, 1, 1),
('Data Structures', 'CS201', 3, 1, 2),
('Operating Systems', 'CS301', 4, 1, 1),
('Machine Learning', 'AI401', 4, 2, 3),
('Digital Electronics', 'EC301', 3, 3, 4);

INSERT INTO Enrollment (student_id, course_id, semester, enrollment_date) VALUES
(1, 1, '2024-Odd', '2024-07-01'),
(1, 2, '2024-Odd', '2024-07-01'),
(2, 4, '2024-Odd', '2024-07-02'),
(3, 1, '2024-Odd', '2024-07-03'),
(3, 3, '2024-Odd', '2024-07-03'),
(4, 4, '2024-Odd', '2024-07-04'),
(5, 5, '2024-Odd', '2024-07-05');

INSERT INTO Results (enrollment_id, marks_obtained, total_marks, grade, exam_date) VALUES
(1, 88, 100, 'A', '2024-11-20'),
(2, 79, 100, 'B', '2024-11-21'),
(3, 92, 100, 'A', '2024-11-20'),
(4, 84, 100, 'A', '2024-11-20'),
(5, 76, 100, 'B', '2024-11-22'),
(6, 90, 100, 'A', '2024-11-20'),
(7, 68, 100, 'C', '2024-11-23');

SELECT * FROM Student;

UPDATE Student
SET address = 'Updated Address, City, 500006'
WHERE student_id = 1;
SELECT * FROM Department;
SELECT * FROM Faculty;
SELECT * FROM Student_Phone;
SELECT * FROM Faculty_Qualification;
SELECT * FROM Course;
SELECT * FROM Enrollment;
SELECT * FROM Results;
