CREATE DATABASE school;

USE company;
CREATE TABLE student_list(
rollnumber INT,
studentname VARCHAR(50),
age INT
);

USE company;
INSERT INTO student_list VALUES (2,'Sindhu',88),(3,'Dhivya',88);


USE company;
SELECT * FROM student_list;