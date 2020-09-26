create table win07 (
	serial_no int,
	id varchar(6) primary key,
	first_name varchar(255),
	last_name varchar(255),
	gender char,
	company varchar(6),
	group_id varchar(6),
	table_number varchar(6)
	);

create table win08 (
	serial_no int,
	id varchar(6) primary key,
	street_address varchar(255),
	email varchar(255)
	);

create table company (
	serial_no int,
	id varchar(6) primary key,
	company_name varchar(255)
);

create table group_name (
	serial_no int,
	id varchar(6) primary key,
	group_na varchar(255)
);

create table table_number (
	serial_no int,
	id varchar(6) primary key,
	number_of_people int,
	trainee_years int,
	age int,
	year_line int
);


INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (1, 'N00001', 6, 3, 23, 1997);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (2, 'N00002', 6, 4, 24, 1996);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (3, 'N00003', 6, 3, 26, 1994);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (4, 'N00004', 6, 7, 22, 1998);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (5, 'N00005', 6, 6, 22, 1998);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (6, 'N00006', 6, 3, 20, 2000);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (7, 'N00007', NULL, 5, NULL, 1995);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (8, 'N00008', NULL, 7, NULL, 1996);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (9, 'N00009', NULL, 4, NULL, 1997);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (10, 'N00010', NULL, 5, NULL, 1997);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (11, 'N00011', 7, 3, 22, 1998);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (12, 'N00012', 7, 3, 21, 1998);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (13, 'N00013', 7, 3, 21, 1999);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (14, 'N00014', 7, 3, 21, 1999);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (15, 'N00015', 7, 3, 21, 1999);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (16, 'N00016', 7, 3, 21, 1999);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (17, 'N00017', 7, 3, 20, 1999);
INSERT INTO table_number(serial_no, id, number_of_people, trainee_years, age, year_line) VALUES (18, 'N00018', 7, 3, 19, 2000);

INSERT INTO company(serial_no,id,company_name) VALUES (1,'C00001','SM_entertainment');
INSERT INTO company(serial_no,id,company_name) VALUES (2,'C00002','YG_entertainment');
INSERT INTO company(serial_no,id,company_name) VALUES (3,'C00003','JYP_entertainment');
INSERT INTO company(serial_no,id,company_name) VALUES (4,'C00004','Fantagio');
INSERT INTO company(serial_no,id,company_name) VALUES (4,'C00005','KQ_Entertainment');

INSERT INTO group_name(serial_no,id,group_na) VALUES (1,'G00001','Astro');
INSERT INTO group_name(serial_no,id,group_na) VALUES (2,'G00002','BLACKPINK');
INSERT INTO group_name(serial_no,id,group_na) VALUES (3,'G00003','ATEEZ');

INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00003','Dong-min','Lee','M','C00004','G00001','N00001');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (2,'A00002','Jin-woo','Park','M','C00004','G00001','N00002');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (3,'A00001','Myung-jun','Kim','M','C00004','G00001','N00003');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (4,'A00004','Bin','Moon','M','C00004','G00001','N00004');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (5,'A00005','Min-hyuk','Park','M','C00004','G00001','N00005');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (6,'A00006','San-Ha','Yoon','M','C00004','G00001','N00006');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (7,'A00007','Ji-Soo','Kim','F','C00002','G00002','N00007');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (8,'A00008','Jennie','Kim','F','C00002','G00002','N00008');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (9,'A00009','Chae-Young','Park','F','C00002','G00002','N00009');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (10,'A00010','Lalisa','Manoban','F','C00002','G00002','N00010');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (11,'A00011','Seong_Hwa','Park','M','C00005','G00003','N00011');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (12,'A00012','Hong_Joong','Kim','M','C00005','G00003','N00012');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (13,'A00013','Yun_Ho','Jeong','M','C00005','G00003','N00013');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00014','Yeo_Sang','Kang','M','C00005','G00003','N00014');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00015','San','Choi','M','C00005','G00003','N00015');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00016','Min_Gi','Song','M','C00005','G00003','N00016');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00017','Woo_Young','Jung','M','C00005','G00003','N00017');
INSERT INTO win07(serial_no,id,first_name,last_name,gender,company,group_id,table_number) VALUES (1,'A00018','Jong_Ho','Choi','M','C00005','G00003','N00018');

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




