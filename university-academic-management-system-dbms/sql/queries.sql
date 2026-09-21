-- University Academic Management System
-- Queries: CRUD, JOIN, Aggregate, Grouping and Derived Calculations

USE university_academic_db;

-- 1. Display all students
SELECT * FROM Student;

-- 2. Display students with their departments
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       d.dept_name
FROM Student s
JOIN Department d ON s.dept_id = d.dept_id;

-- 3. Display all courses with faculty
SELECT c.course_code, c.course_name,
       CONCAT(f.first_name, ' ', f.last_name) AS faculty_name
FROM Course c
JOIN Faculty f ON c.faculty_id = f.faculty_id;

-- 4. Display enrollment details
SELECT e.enrollment_id,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       c.course_name, e.semester, e.enrollment_date
FROM Enrollment e
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id;

-- 5. Display results with percentage
SELECT r.result_id,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       c.course_name,
       r.marks_obtained,
       r.total_marks,
       ROUND((r.marks_obtained / r.total_marks) * 100, 2) AS percentage,
       r.grade
FROM Results r
JOIN Enrollment e ON r.enrollment_id = e.enrollment_id
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id;

-- 6. Count students in each department
SELECT d.dept_name, COUNT(s.student_id) AS student_count
FROM Department d
LEFT JOIN Student s ON d.dept_id = s.dept_id
GROUP BY d.dept_id, d.dept_name;

-- 7. Average marks by course
SELECT c.course_name,
       ROUND(AVG(r.marks_obtained), 2) AS average_marks
FROM Results r
JOIN Enrollment e ON r.enrollment_id = e.enrollment_id
JOIN Course c ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_name;

-- 8. Highest marks
SELECT MAX(marks_obtained) AS highest_marks
FROM Results;

-- 9. Students with marks above 80
SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       c.course_name, r.marks_obtained
FROM Results r
JOIN Enrollment e ON r.enrollment_id = e.enrollment_id
JOIN Student s ON e.student_id = s.student_id
JOIN Course c ON e.course_id = c.course_id
WHERE r.marks_obtained > 80;

-- 10. Courses offered by CSE department
SELECT c.course_code, c.course_name
FROM Course c
JOIN Department d ON c.dept_id = d.dept_id
WHERE d.dept_name = 'Computer Science and Engineering';

-- 11. Number of courses handled by each faculty
SELECT CONCAT(f.first_name, ' ', f.last_name) AS faculty_name,
       COUNT(c.course_id) AS course_count
FROM Faculty f
LEFT JOIN Course c ON f.faculty_id = c.faculty_id
GROUP BY f.faculty_id, f.first_name, f.last_name;

-- 12. Students enrolled in more than one course
SELECT s.student_id,
       CONCAT(s.first_name, ' ', s.last_name) AS student_name,
       COUNT(e.course_id) AS courses_enrolled
FROM Student s
JOIN Enrollment e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) > 1;

-- 13. Search a student by email
SELECT * FROM Student
WHERE email = 'ravi@uni.edu';

-- 14. Sort results by marks
SELECT * FROM Results
ORDER BY marks_obtained DESC;

-- 15. Students without results (LEFT JOIN example)
SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) AS student_name
FROM Student s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
LEFT JOIN Results r ON e.enrollment_id = r.enrollment_id
WHERE r.result_id IS NULL;
