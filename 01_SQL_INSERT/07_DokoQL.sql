create table win07 (
	serial_no int,
	id varchar(6) primary key,
	first_name varchar(255),
	last_name varchar(255),
	gender char
	);

create table win08 (
	serial_no int,
	id varchar(6) primary key,
	street_address varchar(255),
	email varchar(255)
	);

INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (1,'A00003','Dong-min','Lee','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (2,'A00002','Jin-woo','Park','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (3,'A00001','Myung-jun','Kim','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (4,'A00004','Bin','Moon','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (5,'A00005','Min-hyuk','Park','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (6,'A00006','San-Ha','Yoon','M');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (7,'A00007','Ji-Soo','Kim','F');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (8,'A00008','Jennie','Kim','F');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (9,'A00009','Chae-Young','Park','F');
INSERT INTO win07(serial_no,id,first_name,last_name,gender) VALUES (10,'A00010','Lalisa','Manoban','F');

INSERT INTO win08(serial_no,id,street_address,email) VALUES (1,'B00003','GATE_WAY',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (2,'B00002','BLUE _FLAME',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (3,'B00001','All_Light',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (4,'B00004','Baby',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (5,'B00005','Crazy_Sexy_Cool',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (6,'B00006','We_Still',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (3,'A00007','SQUARE_UP',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (4,'A00008','SQUARE_ONE',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (5,'A00009','SQUARE_TWO',NULL);
INSERT INTO win08(serial_no,id,street_address,email) VALUES (6,'A00010','KILL_THIS_LOVE',NULL);

select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') union select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');
select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') union all select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');
select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') intersect select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');
select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') minus select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');
select serial_no, id, street_address from win08 where street_address IN('GATE_WAY','BLUE _FLAME') intersect select serial_no, id, first_name from win07 where first_name IN('Myung-jun','Jin-woo');

select serial_no, id, street_address from win08 where id IN('B00003','A00004','A00005','A00006') intersect select serial_no, id, first_name from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no, id, street_address from win08 where id IN('B00003','A00004','A00005','A00006') union select serial_no, id, first_name from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no, id, street_address from win08 where id IN('B00003','A00004','A00005','A00006') union all select serial_no, id, first_name from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no, id, street_address from win08 where id IN('B00003','A00004','A00005','A00006') except select serial_no, id, first_name from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no,id from win08 where id IN('B00003','A00004','A00005','A00006') intersect select serial_no, id from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no,id from win08 where id IN('B00003','A00004','A00005','A00006') except select serial_no, id from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no,id from win08 where id IN('B00003','A00004','A00005','A00006') union select serial_no, id from win07 where id IN('A00003','A00004','A00005','A00006');
select serial_no,id from win08 where id IN('B00003','A00004','A00005','A00006') union all select serial_no, id from win07 where id IN('A00003','A00004','A00005','A00006');

create table win03 (
	serial_no int unique,
	id varchar(6) primary key not null
);

create table win04 (
	serial_no int unique,
	id varchar(6) primary key not null
);

INSERT INTO win03(serial_no,id) VALUES (1,'A00001');
INSERT INTO win03(serial_no,id) VALUES (2,'A00002');
INSERT INTO win03(serial_no,id) VALUES (3,'A00003');
INSERT INTO win03(serial_no,id) VALUES (4,'A00004');
INSERT INTO win03(serial_no,id) VALUES (5,'A00005');
INSERT INTO win03(serial_no,id) VALUES (6,'A00006');
INSERT INTO win03(serial_no,id) VALUES (7,'A00007');
INSERT INTO win03(serial_no,id) VALUES (8,'A00008');
INSERT INTO win03(serial_no,id) VALUES (9,'A00009');

INSERT INTO win04(serial_no,id) VALUES (1,'A00001');
INSERT INTO win04(serial_no,id) VALUES (2,'A00002');
INSERT INTO win04(serial_no,id) VALUES (3,'A00003');
INSERT INTO win04(serial_no,id) VALUES (4,'A00004');
INSERT INTO win04(serial_no,id) VALUES (5,'A00005');
INSERT INTO win04(serial_no,id) VALUES (6,'A00006');


CREATE TABLE `win03` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(6) NOT NULL,
  `quantity` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_no` (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1
