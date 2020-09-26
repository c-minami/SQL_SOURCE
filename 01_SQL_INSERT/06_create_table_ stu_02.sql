create table win01 (
	serial_no int unique auto_increment,
	id varchar(6) primary key
);
create table win02 (
	serial_no int unique auto_increment,
	id varchar(6) primary key,
	remark varchar(255)
);


alter table win01 modify column id varchar(6) not null;
alter table win01 add column remark varchar(255);

MariaDB [win_test]> desc win01
    -> ;
+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| serial_no | int(11)      | NO   | UNI | NULL    | auto_increment |
| id        | varchar(6)   | NO   | PRI | NULL    |                |
| remark    | varchar(255) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+
3 rows in set (0.02 sec)

insert into win01 
	(
		id,
		remark
	) value (
		'A00001',
		'aaaaaaaaaaaaaaaaaaaaaaaa'
	);

insert into win01 
	(
		id,
		remark
	) value (
		'A00002',
		'bbbbbbbbbbbbbbbbbbbbbbbbbbb'
	);

insert into win02 (serial_no, id, remark) 
	select * from win01 where id = 'A00001';

insert into win02 (serial_no, id, remark)
	select serial_no, id, remark from win01 where id = 'A00002';

update win01 set
	remark = 'cccccccccccccccccc'
where
	id = 'A00001';

update win01 set
	remark = 'dddddddddd'
where
	id = 'A00002';

update win01 set
	remark =
	(select remark from win02 where id = 'A00001')
	WHERE id = 'A00001';

alter table win01 add column land varchar(255);
alter table win02 add column land varchar(255);

insert into win01 (land) value ('myon-don');

MariaDB [win_test]> select * from win01
    -> ;
+-----------+--------+--------------------------+----------+
| serial_no | id     | remark                   | land     |
+-----------+--------+--------------------------+----------+
|         3 |        | NULL                     | myon-don |
|         1 | A00001 | aaaaaaaaaaaaaaaaaaaaaaaa | NULL     |
|         2 | A00002 | dddddddddd               | NULL     |
+-----------+--------+------------------------

insert into win02 (id, remark, land)
	value (
			'A00003','eeeeeeee',
			(select land from win01 where serial_no=3)
	);

insert into win02 (id, remark, land)
	value(
			'A00004','fffffffff',
			(select land from win01 where serial_no=3)
	);

create table win03 (
	serial_no int unique auto_increment,
	id varchar(6) primary key not null
);
create table win04 (
	serial_no int unique auto_increment,
	id varchar(6) primary key not null,
	constraint foreign key (id) references win03 (id)
);

insert into win03 (id) value ('A00001');
insert into win03 (id) value ('A00002');
insert into win03 (id) value ('A00003');
insert into win03 (id) value ('A00004');
insert into win03 (id) value ('A00005');
insert into win03 (id) value ('A00006');
insert into win03 (id) value ('A00007');
insert into win03 (id) value ('A00008');
insert into win03 (id) value ('A00009');

insert into win04 (id) value ('A00001');
insert into win04 (id) value ('A00002');
insert into win04 (id) value ('A00003');


truncate table win03;
delete from win03;

drop table win03;

insert into win04 (id) value ('A00007');
SAVEPOINT a;
commit;
insert into win04 (id) value ('A00008');
SAVEPOINT b;
insert into win04 (id) value ('A00009');
ROLLBACK TO SAVEPOINT b;

DELETE FROM win04 WHERE id = 'A00007';
SAVEPOINT a;
commit;
DELETE FROM win04 WHERE id = 'A00008';
SAVEPOINT b;
DELETE FROM win04 WHERE id = 'A00009';
ROLLBACK TO SAVEPOINT b;

select * from win03 WHERE id = (
select id from win04 WHERE id ='A00004'
);

select * from win03 WHERE id = (
	select id from win04 WHERE id = 'A00004'
);

select * from win03 WHERE id IN (
	select id from win04 WHERE id IN ('A00004','A00005','A00006')
) ORDER BY id DESC;

select * from win03 WHERE id = (
	select id from win04 WHERE id IN ('A00005')
);

alter table win04 add column quantity int;

update win04 set quantity = 10 WHERE id = 'A00001';
update win04 set quantity = 20 WHERE id = 'A00002';
update win04 set quantity = 30 WHERE id = 'A00003';
update win04 set quantity = 40 WHERE id = 'A00004';
update win04 set quantity = 50 WHERE id = 'A00005';
update win04 set quantity = 60 WHERE id = 'A00006';

select * from win03 WHERE id IN (
	select id from win04 where id IN('A00001','A00002','A00003')
) AND  serial_no IN(
	select serial_no from win04 where quantity IN(20,30,40)
);

select * from win03 where (serial_no,id) = (
	select serial_no, id from win04 where quantity IN(20)
);

select * from win03 where (serial_no,id) IN (
	select serial_no, id from win04 where quantity IN(20,30,40)
);

select * from win03 where (serial_no, id) IN (
select serial_no, id from win04 where quantity IN(10, 20, 30)
);

select serial_no, id from win03 where serial_no IN(1,2,3) union 
select serial_no, id from win04 where quantity IN(20, 30, 40);

select serial_no, id from win03 where serial_no IN(1,2,3) union all 
select serial_no, id from win04 where quantity IN(20, 30, 40);

(select serial_no, id from win03 where serial_no IN(1,2,3)) INTERSECT all
(select serial_no, id from win04 where serial_no IN(2, 3, 4));


 select serial_no, id from win04 where serial_no IN (1,2,3) expect select serial_no, id from win03 where serial_no IN(4,5,6);


select serial_no, id from win03 natural join win04;
select serial_no, id from win03 natural join win04;
select serial_no, id from win04 natural join win03;

alter table win03 add column quantity varchar(8);

select serial_no, quantity from win03 join win04 useing(quantity);

select a.serial_no, a.quantity, b.serial_no, b.quantity from win03 a join win04 b using(quantity);

update win03 set quantity='198' where id='A00001';
update win03 set quantity='205' where id='A00002';
update win03 set quantity='363' where id='A00003';
update win04 set quantity='203948' where id='A00004';
update win03 set quantity='124642' where id='A00005';

select a.serial_no, b.id, b.serial_no, b.id from win03 a join win04 b using(quantity) where serial_no=1;

select a.serial_no, b.id, b.serial_no, b.id from win03 a join win04 b using(quantity) where serial_no=1;

select a.serial_no, a.quantity, b.serial_no, b.quantity from win03 a join win04 b using(quantity) where b.serial_no IN(1,2,3);


select a.serial_no, a.quantity, b.serial_no, b.quantity from win03 a join win04 b using(quantity) where b.serial_no IN(1,2,3);

select a.serial_no, a.id, b.serial_no, b.id from win03 a natural join win04 b WHERE id IN('A00001','A00002','A00003');

select serial_no, id from win03 natural join win04 WHERE id IN('A00001','A00002','A00003');
select a.serial_no, a.id, b.serial_no, b.id from win03 a left join win04 b on a.id= b.id where a.id IN('A00001','A00002','A00003');




MariaDB [win_test]> select * from win03;
+-----------+--------+----------+
| serial_no | id     | quantity |
+-----------+--------+----------+
|         1 | A00001 | 198      |
|         2 | A00002 | 205      |
|         3 | A00003 | 363      |
|         4 | A00004 | 6568565  |
|         5 | A00005 | 124642   |
|         6 | A00006 | NULL     |
|         7 | A00007 | 7554524  |
|         8 | A00008 | NULL     |
|         9 | A00009 | NULL     |
+-----------+--------+----------+
9 rows in set (0.00 sec)

MariaDB [win_test]> select * from win04;
+-----------+--------+----------+
| serial_no | id     | quantity |
+-----------+--------+----------+
|         1 | A00001 |       10 |
|         2 | A00002 |       20 |
|         3 | A00003 |       30 |
|         4 | A00004 |   203948 |
|         5 | A00005 |       50 |
|         6 | A00006 |       60 |
+-----------+--------+----------+
6 rows in set (0.00 sec)

select a.serial_no, a.id, b.serial_no, b.id from win03 a left join win04 b on a.id = b.id;
select a.serial_no, a.id, b.serial_no, b.id from win04 b left join win03 a on b.id = a.id;

create table win05 (
serial_no int unique auto_increment,
id varchar(255) primary key not null,
first_name varchar(255),
last_name varchar(255),
gender char
);

create table win06 (
serial_no int unique auto_increment,
id varchar(255) primary key not null,
street_address varchar(255),
email varchar(255),
constraint foreign key (id) references win05 (id)
);


select serial_no, id, gender, email from win05 natural join win06;
select a.serial_no, a.id, a.gender, b.email from win05 a join win06 b using(id);

MariaDB [win_test]> desc win03;
+-----------+------------+------+-----+---------+----------------+
| Field     | Type       | Null | Key | Default | Extra          |
+-----------+------------+------+-----+---------+----------------+
| serial_no | int(11)    | NO   | UNI | NULL    | auto_increment |
| id        | varchar(6) | NO   | PRI | NULL    |                |
| quantity  | varchar(8) | YES  |     | NULL    |                |
+-----------+------------+------+-----+---------+----------------+
3 rows in set (0.02 sec)

MariaDB [win_test]> desc win04;
+-----------+------------+------+-----+---------+----------------+
| Field     | Type       | Null | Key | Default | Extra          |
+-----------+------------+------+-----+---------+----------------+
| serial_no | int(11)    | NO   | UNI | NULL    | auto_increment |
| id        | varchar(6) | NO   | PRI | NULL    |                |
| quantity  | int(11)    | YES  |     | NULL    |                |
+-----------+------------+------+-----+---------+----------------+
3 rows in set (0.02 sec)

select serial_no, id from win03 where id IN('A00001','A00002','A00003') union select serial_no, id from win04;
select serial_no, id from win03 where id IN('A00001','A00002','A00003') union all select serial_no, id from win04;

create table win07 (
	serial_no int unique auto_increment,
	id varchar(6) primary key not null,
	first_name varchar(255),
	last_name varchar(255),
	gender char
	);

create table win08 (
	serial_no int unique auto_increment,
	id varchar(6) primary key not null,
	street_address varchar(255),
	email varchar(255)
	);

insert into win07 (
	id,
	first_name,
	last_name,
	gender
) value (
	'A00001',
	'Myung-jun',
	'Kim',
	'M'
);

select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') union select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');
select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') union all select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');