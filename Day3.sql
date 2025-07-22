
USE company;
UPDATE student_list SET age=30 WHERE studentname='Sindhu' OR studentname='Dhivya';

SELECT * FROM student_list LIMIT 10 OFFSET 2;

USE company;
SELECT * FROM student_list where age>40 ORDER BY studentname desc LIMIT 2;


USE company;
CREATE TABLE actor_list(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
age INT not null,
isMarried BOOLEAN );


INSERT INTO actor_list (name, email, age, isMarried) VALUES ('Vijay Sethupathy','vjs@gamil.com',55,True),('Harish Kalyan','hk@gamil.com',2,True),('Trisha','Tri@gamil.com',42,False),('Arjun Das','ad@gamil.com',32,False);

SELECT id,name,email,age,isMarried FROM actor_list;
UPDATE actor_list SET age=32;


CREATE TABLE samlpe_data(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50) NOT NULL,
gender ENUM('male','female','others') );

INSERT INTO samlpe_data (name,gender) VALUE ('Vikram','male');

SELECT * FROM samlpe_data;