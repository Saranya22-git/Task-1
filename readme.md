## 1.📚 Student Database Management System
This project implements a relational database system for managing student records, course enrollments, department details, and academic course data. It simulates a real-world academic environment using SQL and demonstrates schema design, relationships, and data management through structured queries.
## 2.🔧Technologies Used
- MySQL (tested with MySQL Workbench)
- Relational Database Principles
- SQL Scripting for DDL and DML
## 3.🗃️ Database Schema Overview
The database is composed of four core tables:
- Department_DB: Contains department names and HOD details.
- Student_DB: Stores student names, dates of birth, and department affiliations.
- Course_DB: Defines academic courses and credits.
- Enrollment_DB: Manages many-to-many relationships between students and courses.
## 4.Entity Relationships
- Each student belongs to one department.
- Each course can be enrolled by multiple students.
- Enrollments track which student is registered in which course, along with the enrollment date.


## 5.📌Entities
Define:An entity is a real-world object or concept represented in a database. In relational databases, each table usually represents an entity.
These correspond to your tables:
- Department-Attributes: Department_Id, Department_Name, Department_HOD
- Student-Attributes: Student_Id, Student_Name, Student_DOB, Department_Id
- Course-Attributes: Course_Id, Course_Name, Course_Credits
- Enrollment-Attributes: Enrollment_Id, Student_Id, Course_Id, Enrollment_Date

## 6.🔗Relationships
Define:A relationship describes how two entities are connected.
- Department – Student
- One-to-Many: A department can have many students, but each student belongs to only one department.
- Implemented via: Student.Department_Id → Department.Department_Id
- Student – Course (via Enrollment)
- Many-to-Many: A student can enroll in multiple courses, and a course can have multiple students.
- Handled by: Enrollment table as a junction entity.
- Links:
- Enrollment.Student_Id → Student.Student_Id
- Enrollment.Course_Id → Course.Course_Id

## 7.🔑Primary Keys (PK)
Define:A primary key is a column (or combination of columns) that uniquely identifies each row in a table.
These uniquely identify each record in a table.
- Department_DB: Department_Id
- Student_DB: Student_Id
- Course_DB: Course_Id
- Enrollment_DB: Enrollment_Id

## 8.🔗Foreign Keys (FK)
Define:A foreign key is a column in one table that creates a link to the primary key in another table.
These create relationships by referring to primary keys in another table.
- Student_DB:
- Department_Id → References Department_DB(Department_Id)
- Enrollment_DB:
- Student_Id → References Student_DB(Student_Id)
- Course_Id → References Course_DB(Course_Id)
















