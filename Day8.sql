use company;

select * from updated_price_list;

select AVG(price) as average_price from updated_price_list;

select * from updated_price_list where price>(select avg(price) from updated_price_list);

select * from employee_list;
select * from salary_data;
select avg(amount) from salary_data;
delete from salary_data where id=6;
select * from employee_list where name in ('Thaara', 'Chandru','Bala');


select e.name from employee_list e inner join salary_data s
 on e.id=s.userID where s.amount<(select avg(amount) from salary_data);

select userId from salary_data where amount<(select avg(amount) from salary_data);

select name from employee_list where id in
 (select userId from salary_data where amount<(select avg(amount) from salary_data)); 
 



