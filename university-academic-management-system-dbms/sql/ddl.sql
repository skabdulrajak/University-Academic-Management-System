CREATE DATABASE university_academic;
USE university_academic;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL UNIQUE,
    established_year YEAR,
    hod_id INT
);

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    designation VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE,
    email VARCHAR(100) UNIQUE NOT NULL,
    address TEXT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Student_Phone (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    phone VARCHAR(15) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Faculty_Qualification (
    id INT PRIMARY KEY AUTO_INCREMENT,
    faculty_id INT NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    credits INT CHECK (credits BETWEEN 1 AND 6),
    dept_id INT,
    faculty_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    semester VARCHAR(20) NOT NULL,
    enrollment_date DATE,
    UNIQUE (student_id, course_id, semester),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE Results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollment_id INT UNIQUE NOT NULL,
    marks_obtained DECIMAL(5,2) CHECK (marks_obtained >= 0),
    total_marks DECIMAL(5,2) DEFAULT 100 CHECK (total_marks > 0),
    grade CHAR(2),
    exam_date DATE,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id)
);

-- Add Department -> Faculty HOD relationship after Faculty exists.
ALTER TABLE Department
ADD CONSTRAINT fk_department_hod
FOREIGN KEY (hod_id) REFERENCES Faculty(faculty_id);


