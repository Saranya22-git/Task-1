CREATE DATABASE Student_DB;
USE Student_DB;

CREATE TABLE Department_DB (
    Department_Id INT PRIMARY KEY AUTO_INCREMENT,
    Department_Name VARCHAR(50) UNIQUE,
    Department_HOD VARCHAR(50)
);

CREATE TABLE Enrollment_DB (
    Enrollment_Id INT PRIMARY KEY AUTO_INCREMENT,
    Student_Id INT,
    Course_Id INT,
    Enrollment_Date DATE,
    FOREIGN KEY (Student_Id) REFERENCES Student_DB(Student_Id),
    FOREIGN KEY (Course_Id) REFERENCES Course_DB(Course_Id)
);

CREATE TABLE Student_DB (
    Student_Id INT PRIMARY KEY AUTO_INCREMENT,
    Student_Name VARCHAR(50),
    Student_DOB DATE,
    Department_Id INT,
    FOREIGN KEY (Department_Id) REFERENCES Department_DB(Department_Id)
);

CREATE TABLE COURSE_DB(
    Course_Id INT PRIMARY KEY AUTO_INCREMENT,
    Course_Name VARCHAR(50),
    Course_Credits INT
);

INSERT INTO Department_DB (Department_Name, Department_HOD)
VALUES ('Computer Science', 'Dr.Roy'),
('Information Technology','Dr.Prasad'),
('Civil','Dr.Tejaswi'),
('Mechanical','Dr.Adnan Shafi'),
('Artificial Intelligence','Dr.Satya Sree');

INSERT INTO Enrollment_DB (Student_Id, Course_Id, Enrollment_Date)
VALUES 
    (1, 1101, '2024-07-01'),
    (1, 1104, '2024-07-01'),
    (2, 1103, '2024-07-01');


INSERT INTO Student_DB (Student_Name, Student_DOB, Department_Id)
VALUES ('Saranya', '2004-11-22', 1),
('Addu','2005-05-26',2),
('Teju','2004-12-09',3),
('Rahul','2003-04-11',1),
('Sowmya','2002-09-12',2),
('Sony','2004-05-26',5);

INSERT INTO Course_DB(Course_Id,Course_Name,Course_Credits)
VALUES(1101,'C',5),
(1102,'C++',5),
(1103,'HTML',5),
(1104,'DSA',5),
(1105,'PYTHON',5);

SELECT*FROM Department_DB;
SELECT*FROM Enrollment_DB;
SELECT*FROM Student_DB;
SELECT*FROM Course_DB;
