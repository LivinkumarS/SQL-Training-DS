USE company;
SELECT name as actorname, email as mailid,age, isMarried FROM actor_list;

SELECT ROUND(11.09) as number;
SELECT CEIL(11.8) as number;
SELECT FLOOR(11.99) as number;

SELECT CONCAT("Livin","kumar") as name;
SELECT LENGTH("Livinkumar S") as name;
SELECT UPPER("Livinkumar S") as name;
SELECT LOWER("Livinkumar S") as name;
SELECT SUBSTRING("Livinkumar S" ,5, 5) as firstName;

SELECT * FROM actor_list;

SELECT CONCAT(SUBSTRING(name,1,1),' is the first letter for ',name) as firstLetter, 2025-age as BornYear FROM actor_list ORDER BY name ASC LIMIT 3;


SELECT NOW() as currentDateAndAtime;
SELECT CURDATE() as currentDate;
SELECT DATEDIFF(CURDATE(),'2003-05-28') as difference;
