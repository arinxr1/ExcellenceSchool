CREATE DATABASE ExcellenceSchool;

USE ExcellenceSchool;

CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender CHAR(1),
    enrollment_date DATE,
    email VARCHAR(100),
    level INT,
    track VARCHAR(20),
    gpa DECIMAL(5,2)
);

CREATE TABLE Teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(100) NOT NULL,
    birth_date DATE,
    gender CHAR(1),
    email VARCHAR(100),
    office_number VARCHAR(10)
);

CREATE TABLE Subjects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(100)
);

SHOW TABLES;

-- Insert Students


INSERT INTO Students
(student_name,birth_date,gender,enrollment_date,email,level,track,gpa)
VALUES
('Arin Ahmed','2004-07-17','F','2023-09-03','arin.ahmed@email.com',6,'Scientific',99.80),
('Ahmed Ali','2005-01-15','M','2023-09-03','ahmed.ali@email.com',5,'Scientific',91.20),
('Sara Mohammed','2005-02-18','F','2023-09-03','sara.m@email.com',4,'Humanities',94.50),
('Faisal Khalid','2004-11-20','M','2023-09-03','faisal.k@email.com',6,'Scientific',88.90),
('Lama Hassan','2005-03-11','F','2023-09-03','lama.h@email.com',3,'Humanities',92.30),
('Abdullah Salem','2004-06-30','M','2023-09-03','abdullah.s@email.com',5,'Scientific',89.40),
('Reem Ahmed','2005-05-09','F','2023-09-03','reem.a@email.com',4,'Humanities',95.10),
('Yousef Omar','2004-08-16','M','2023-09-03','yousef.o@email.com',6,'Scientific',86.70),
('Noor Ibrahim','2005-09-12','F','2023-09-03','noor.i@email.com',2,'Humanities',97.00),
('Saad Mohammed','2004-04-28','M','2023-09-03','saad.m@email.com',5,'Scientific',84.60),

('Mona Khalid','2005-07-21','F','2023-09-03','mona.k@email.com',3,'Scientific',90.10),
('Khalid Ali','2004-10-10','M','2023-09-03','khalid.a@email.com',6,'Scientific',85.30),
('Huda Saad','2005-01-08','F','2023-09-03','huda.s@email.com',2,'Humanities',96.20),
('Turki Abdullah','2004-12-14','M','2023-09-03','turki@email.com',4,'Scientific',87.50),
('Abeer Hassan','2005-03-02','F','2023-09-03','abeer@email.com',5,'Humanities',93.80),
('Omar Ahmed','2004-09-17','M','2023-09-03','omar@email.com',6,'Scientific',90.00),
('Raghad Ali','2005-06-25','F','2023-09-03','raghad@email.com',4,'Humanities',98.10),
('Majed Salem','2004-05-18','M','2023-09-03','majed@email.com',5,'Scientific',83.90),
('Noura Ibrahim','2005-02-27','F','2023-09-03','noura@email.com',3,'Scientific',94.00),
('Bandar Mohammed','2004-01-13','M','2023-09-03','bandar@email.com',6,'Scientific',88.10),

('Jawaher Khalid','2005-08-05','F','2023-09-03','jawaher@email.com',2,'Humanities',92.90),
('Fahad Omar','2004-07-01','M','2023-09-03','fahad@email.com',5,'Scientific',86.40),
('Rana Ali','2005-11-09','F','2023-09-03','rana@email.com',3,'Humanities',95.40),
('Mohammed Saad','2004-06-06','M','2023-09-03','mohammed@email.com',6,'Scientific',87.80),
('Shahad Ahmed','2005-04-04','F','2023-09-03','shahad@email.com',4,'Scientific',91.70),
('Ziyad Hassan','2004-03-23','M','2023-09-03','ziyad@email.com',5,'Scientific',84.20),
('Dana Abdullah','2005-10-01','F','2023-09-03','dana@email.com',2,'Humanities',97.40),
('Sultan Ibrahim','2004-08-30','M','2023-09-03','sultan@email.com',6,'Scientific',89.90),
('Haneen Salem','2005-05-16','F','2023-09-03','haneen@email.com',3,'Scientific',93.10),
('Nawaf Khalid','2004-02-12','M','2023-09-03','nawaf@email.com',4,'Scientific',90.60);


-- Insert Teachers

INSERT INTO Teachers
(teacher_name,birth_date,gender,email,office_number)
VALUES
('Dr. Abdullah Alharbi','1980-03-15','M','abdullah@school.com','A101'),
('Dr. Sara Alotaibi','1985-07-20','F','sara@school.com','A102'),
('Dr. Mohammed Almutairi','1979-11-10','M','mohammed@school.com','B201'),
('Dr. Noura Alqahtani','1988-04-25','F','noura@school.com','B202'),
('Dr. Faisal Alshammari','1982-09-18','M','faisal@school.com','C301'),
('Dr. Huda Alenezi','1987-02-14','F','huda@school.com','C302'),
('Dr. Khalid Alzahrani','1981-06-30','M','khalid@school.com','D101'),
('Dr. Reem Alsubaie','1989-08-05','F','reem@school.com','D102'),
('Dr. Omar Alghamdi','1983-12-01','M','omar@school.com','E201'),
('Dr. Lama Alqahtani','1990-10-12','F','lama@school.com','E202');


-- Insert Subjects

INSERT INTO Subjects(subject_name)
VALUES
('Programming Fundamentals'),
('Calculus'),
('Physics'),
('Database Systems'),
('Digital Logic'),
('Computer Networks');

SELECT * FROM Students;

SELECT * FROM Teachers;

SELECT * FROM Subjects;

SELECT *
FROM Students
ORDER BY student_name ASC;

SELECT
student_name AS Student_Name,
gpa AS GPA
FROM Students;


UPDATE Students
SET email='arin.new@email.com'
WHERE student_name='Arin Ahmed';

UPDATE Teachers
SET office_number='F101'
WHERE teacher_name='Dr. Abdullah Alharbi';


ALTER TABLE Subjects
RENAME TO Courses;


SELECT * FROM Courses;