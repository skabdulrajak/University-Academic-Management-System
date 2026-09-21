# University Academic Management System

A normalized relational database (DBMS Cornerstone Project) that manages a university's academic data — departments, faculty, students, courses, enrollments and results — in place of scattered spreadsheets and registers.

## Team Members

| Name | Roll Number | GitHub Username | Responsibility |
|---|---|---|---|
| Shaik Abdul Rajak | 25B11AIA90 |https://github.com/skabdulrajak | ER Diagram & Relational Schema |
| Surada Rajesh | 25B11AI474 |https://github.com/suradarajesh793-collab| DDL, Tables, Keys & Constraints |
| Pobolu Venkata Pavan | 25B11AI866 |https://github.com/paboluvenkatapavan56-ctrl | DML, Queries, Documentation & Screenshots |



## Project Description

Every semester a university generates large volumes of interrelated academic data — departments, faculty, students, courses, enrollments and results. Kept in separate spreadsheets and registers, this data becomes redundant, inconsistent, and hard to query. The **University Academic Management System** replaces this with a single normalized relational database, implemented in MySQL 8.0, that stores every academic fact exactly once and enforces referential integrity automatically.

Six core entities — **Department, Faculty, Student, Course, Enrollment** and **Results** — were identified, along with two supporting tables, **Student_Phone** and **Faculty_Qualification**, to hold multi-valued attributes. The design was modeled as an ER diagram, mapped to a relational schema, and normalized up to the **Third Normal Form (3NF)**.

## Technologies Used

- DBMS concepts: ER Modeling, Relational Schema Design, Normalization (up to 3NF)
- SQL (DDL, DML, DCL, TCL)
- MySQL 8.0

## Main Modules

- Department Management
- Faculty Management (with Faculty_Qualification)
- Student Management (with Student_Phone)
- Course Management
- Enrollment
- Results

## Database Highlights

- 8 tables (6 core entities + 2 supporting tables) with PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, DEFAULT, and `ON DELETE CASCADE` constraints
- 17 SQL queries covering data retrieval, joins, aggregate functions, `GROUP BY`/`HAVING`, nested and correlated subqueries, views and set operations
- 12 test cases verifying that the database rejects duplicate keys, out-of-range values and orphan records

## Repository Structure

```
university-academic-management-system-dbms/
│
├── sql/
│   ├── ddl.sql
│   ├── dml.sql
│   └── queries.sql
│
├── diagrams/
│   └── er-diagram.png
│
├── docs/
│   └── Project_Documentation.docx
│
├── screenshots/
│   ├── query1_output.png
│   └── query2_output.png
│
└── README.md
```

## Team Responsibilities

| Student Name | Roll No. | Responsibility | Status |
|---|---|---|---|
| Shaik Abdul Rajak | 25B11AIA90 | ER Diagram & Relational Schema | Completed |
| Surada Rajesh | 25B11AI474 | DDL, Tables & Constraints | Completed |
| Pobolu Venkata Pavan | 25B11AI866 | DML, SQL Queries, Documentation & Screenshots | Completed |

## Repository

GitHub repository link: https://github.com/skabdulrajak/university-academic-management-system


## Project Guide

Mr. T. Srinivasulu, M.Tech, (Ph.D.) — Assistant Professor, Department of Artificial Intelligence and Machine Learning, Aditya University.

## Institution

Department of Artificial Intelligence and Machine Learning, Aditya University (Formerly Aditya Engineering College (A)), Surampalem, Andhra Pradesh, India — Academic Year 2026–2027.
