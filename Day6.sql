USE company;

SELECT * FROM employee_list;
SELECT * FROM salary_data;
SELECT * FROM role;

INSERT INTO salary_data (amount,userID) VALUE (20000,2);

UPDATE employee_list SET experience=1;

SELECT e.name, e.email, s.amount, e.experience FROM employee_list e LEFT JOIN salary_data s
ON s.userID=e.id;

SELECT * FROM employee_list e RIGHT JOIN salary_data s
ON s.userID=e.id;

CREATE TABLE role(
id INT PRiMARY KEY AUTO_INCREMENT,
roleName VARCHAR(40) NOT NULL,
userID INT NOT NULL,
foreign key (userID) references employee_list(id)
);

INSERT INTO role (roleName, userID) VALUES ('FED',1),('BED',3),('FSD',4);

SELECT e.name,e.email,r.roleName,s.amount,e.experience FROM employee_list e 
INNER JOIN role r ON e.id=r.userID 
INNER JOIN salary_data s ON s.userId=e.id;


