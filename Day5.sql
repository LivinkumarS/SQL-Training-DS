USE company;

CREATE TABLE employee_list(
id INT PRIMARY KEY auto_increment,
name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
isActive BOOLEAN DEFAULT false
);

CREATE TABLE salary_data(
id INT primary key auto_increment,
amount INT NOT NULL,
userID INT,
foreign key (userID) references employee_list(id)
);

INSERT INTO salary_data (amount,userId) VALUES (25000,1),(40000,3),(100000,4);

INSERT INTO employee_list (name,email,isActive) VALUES  ('Mohith','mohi@gmail.com',true),('Praveen','praveen@gmail.com',true),('Anu','anu@gmail.com',false),('Gokul','goku@gmail.com',true);

SELECT * FROM employee_list;
select * FROM salary_data;

UPDATE salary_data SET amount=30000 where id=1;

ALTER TABLE employee_list ADD experience INT;

ALTER TABLE employee_list MODIFY experience FLOAT;

ALTER TABLE salary_data DROP FOREIGN KEY userID;
