select 
	xx.serial_no, 
	xx.id, 
	xx.first_name, 
	xx.last_name, 
	xx.gender, 
	zz.serial_no, 
	zz.id, 
	zz.street_address, 
	zz.email 
from win07 xx 
natural join win08 zz
where
	xx.id IN('A00004','A00005','A00006')
order by
	xx.id desc;

select 
	xx.serial_no, 
	xx.id, 
	xx.first_name, 
	xx.last_name, 
	xx.gender, 
	zz.serial_no, 
	zz.id, 
	zz.street_address, 
	zz.email 
from win07 xx 
natural join win08 zz;

select * from win07 natural join win08;

select * from win07 xx full outer join win08 zz on xx.id = zz.id;
select * from win07 xx left outer join win08 zz on xx.id = zz.id;
select * from win07 zz right outer join win08 zz on xx.id = zz.id;

select xx.first_name, xx.last_name, xx.gender, zz.street_address from win07 xx natural join win08 zz;

select 
	xx.first_name, 
	xx.last_name,
	zz.gender 
from win07 xx 
inner join win07 zz 
on xx.id = zz.id 
order by xx.first_name desc;

select
	xx.first_name,
	xx.last_name,
	yy.company_name,
	zz.group_na
from
	win07 xx,
	company yy,
	group_name zz
where
	xx.company = yy.id
AND
	xx.group_id = zz.id;

select id, AVG(trainee_years) from table_number;


select AVG(trainee_years) AS 練習生期間 from table_number;

SELECT SUM(trainee_years) AS 練習生期間, AVG(age) AS 年齢 from table_number;
SELECT SUM(age) AS 年齢_合計, SUM(trainee_years) AS 練習生期間_合計 from table_number;
SELECT MIN(age) AS 年齢_最小, MAX(age) AS 年齢_最大 FROM table_number;

SELECT COUNT(*) FROM table_number;
SELECT COUNT(DISTINCT number_of_people) FROM table_number;

UPDATE win07 SET table_number = 'N00007' WHERE id ='A00007';
UPDATE win07 SET table_number = 'N00008' WHERE id ='A00008';
UPDATE win07 SET table_number = 'N00009' WHERE id ='A00009';
UPDATE win07 SET table_number = 'N00010' WHERE id ='A00010';

select SUM(NVL(number_of_people,6)) from table_number;

select NVL(number_of_people,'4') from table_number;

select NVL(TO_String(number_of_people,4)) from table_number;

select NVL(convert(number_of_people),4) from table_number;

select * from table_number where id LIKE 'N%' group by serial_no, year_line, trainee_years;

select serial_no, id, SUM(trainee_years) from table_number group by year_line order by serial_no asc;
select serial_no, id, SUM(trainee_years),year_line from table_number group by year_line order by year_line;
select SUM(trainee_years),year_line from table_number group by year_line order by year_line;

select year_line, sum(trainee_years) from table_number group by year_line order by year_line asc;

select year_line, age, sum(trainee_years) from table_number group by year_line, age order by id desc;

select  sum(trainee_years) from table_number group by number_of_people order by number_of_people desc;
select sum(trainee_years) from table_number group by number_of_people order by number_of_people asc;

select number_of_people, year_line, sum(trainee_years) from table_number group by number_of_people, year_line order by number_of_people asc;

select number_of_people, year_line, sum(trainee_years) from table_number group by number_of_people, year_line having number_of_people IN(6);

select number_of_people, year_line, sum(trainee_years), age from table_number group by number_of_people, year_line,age having age IN(22, 23);
