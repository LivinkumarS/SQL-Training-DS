USE company;
SELECT * FROM student_list;
USE company;
INSERT INTO student_list VALUES (5,'Arya',45),(6,'Dhanush',47),(7,'Samantha',31);

SET SQL_SAFE_UPDATES=0;

USE company;
UPDATE student_list SET rollnumber=6, studentname='Ajith', age=55 WHERE studentname='Vijay';


USE company;
DELETE FROM student_list WHERE rollnumber=6;

USE company;
SELECT * FROM student_list WHERE age>40 OR rollnumber>3;

USE company;
SELECT * FROM student_list WHERE NOT age>40;

USE company;
SELECT * FROM student_list WHERE age>=30 and age<=50;

USE company;
SELECT * FROM student_list WHERE age BETWEEN 30 AND 50;



USE company;
SELECT * FROM student_list WHERE studentname LIKE '%in%';