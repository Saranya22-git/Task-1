CREATE DATABASE student_admission;

--Student Details

CREATE TABLE student_details(
stu_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
student_dob DATE,
stu_gender VARCHAR(100),
course VARCHAR(100),
payment INT NOT NULL
);

--Inserting Single Value

INSERT INTO student_details
VALUES (1,"Rama","Krishna","2003-11-11","Male","English",2000);


--Inserting Multiple Values

INSERT INTO student_details
VALUES (2,"Sai","Ram","2004-12-02","Male","Physics",3000),
	   (3,"Priyanka","Chowdary","2005-09-10","Female","Maths",3000),
       (4,"Satya","Sri","1990-06-13","Female","Computer",2500),
       (5,"Adnan","Shafi","2005-05-26","Male","Science",3000);
       
--Missing Columns

INSERT INTO student_details (stu_id,first_name,course,payment)
VALUES(6,"saranya","Chemistry",2500);

--Update Table
UPDATE student_details
SET stu_gender="Female"
WHERE stu_id=6;

--Updating Multiple Records

UPDATE student_details
SET last_name="Jain",Course="Chemistry"
WHERE stu_id=3;

UPDATE student_details
SET course="Undecided"
WHERE stu_id=2;

--Deleting Table Column

DELETE FROM student_details
WHERE stu_id=1;

SELECT*FROM student_details;

DROP TABLE student_details;