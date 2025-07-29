use company;

CREATE TABLE updated_price_list(
id int primary key,
name varchar(50) Not null,
category varchar(50) not null,
price double NOT Null
);

describe price_list;

ALTER TABLE updated_price_list MODIFY id int auto_increment;

SELECT * FROM updated_price_list;

INSERT INTO updated_price_list (name,category, price) VALUES ('salt', 'grocery',10.5654),('sugar','grocery',30.5435),('oil','grocery',200.00),('mobile','electronic gadgets',25000),('smart watch','electronic gadgets',5000),('Apple','fruit',200),('Orange','fruit',100);
SELECT COUNT(name) as number_of_names,SUM(price) as total_price FROM price_list;

SELECT AVG(price) as average_price FROM price_list;
SELECT MAX(price) as highest_price FROM price_list;
SELECT MIN(price) as lowest_price FROM price_list;

SELECT category,AVG(price) as average_price from updated_price_list WHERE category='grocery' GROUP BY category;

DROP TABLE price_list;
DROP DATABASE school;