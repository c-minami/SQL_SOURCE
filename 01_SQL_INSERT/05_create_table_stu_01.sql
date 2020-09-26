CREATE TABLE testCreate01( 
  SERIAL VARCHAR (30) NOT NULL PRIMARY KEY
  , NAME VARCHAR (100)
  , EMAIL VARCHAR (200)
  , REMARK TEXT 
);

DROP TABLE testCreate01;


CREATE TABLE testCreate02(
  SERIAL_NO VARCHAR (35) PRIMARY KEY NOT NULL,
  ID VARCHAR(150) NOT NULL,
  EMAIL VARCHAR(200) UNIQUE,
  ADRESS TEXT,
  REMARK TEXT
);

CREATE TABLE testCreate04(
	SERIAL_NO VARCHAR (30) NOT NULL,
	ID VARCHAR(50) PRIMARY KEY NOT NULL,
	EMAIL VARCHAR(200) DEFAULT '@xx.com',
	TIMEDATE DATE DEFAULT sysdate()
);

CREATE TABLE testcreate05(
	SERIAL_NO VARCHAR (30) NOT NULL,
	ID VARCHAR(50) PRIMARY KEY NOT NULL,
	EMAIL VARCHAR(200) DEFAULT '@xx.com',
	TIMEDATE DATE
);


CREATE TABLE testcreate11(
	serial_no varchar(30) not null,
	id varchar(50) primary key,
	email varchar(200) default '@xx.com',
	remark text
);


CREATE TABLE testcreate12(
	serial_no varchar(30) not null,
	id varchar(50) not null unique,
	email varchar(200) default '@xx.co.jp',
	remark text,
	foreign key (id) REFERENCES testcreate11 (id)
);


INSERT INTO testcreate11 VALUES ('0000001','0000001','000001@com','”õlXXXXXXXXXXX');
INSERT INTO testcreate12 VALUES ('0000001','0000001','000001@com','”õlXXXXXXXXXXX');
INSERT INTO testcreate11 VALUES ('0000001','0000002','000002@com','”õlXXXXXXXXXXX');
INSERT INTO testcreate12 VALUES ('0000002','0000002','000002@com','”õlXXXXXXXXXXX');

CREATE TABLE testcreate13(
	serial_no varchar (30) not null,
	id varchar (50) not null,
	address varchar (255),
	foreign key (id) REFERENCES testcreate11 (id)
	);

CREATE TABLE testcreate14(
	serial_no varchar(30) not null,
	id varchar(50)not null primary key,
	email varchar(200) default 'xx@com' unique,
	remark varchar(255) unique,
	hoby varchar(255) unique,
	other varchar(255)
);

CREATE TABLE testcreate14(
	serial_no varchar(30) not null unique,
	id varchar(50) not null primary key,
	email varchar(100) default 'xx@com' not null unique,
	remark varchar(255) unique,
	hoby varchar(255)unique,
	other varchar(255) unique
);
CREATE TABLE testcreate15(
	serial_no varchar(30) not null unique,
	id varchar(50) unique,
	address varchar(255) not null,
	foreign key(id) REFERENCES testcreate14(id)
);

CREATE TABLE testcreate16(
	serial_no varchar(30) not null unique,
	id varchar(50),
	remark text,
	foreign key (id) references testcreate14 (id)
);

insert testcreate14 value('00001','00001','00001@com','aaaa','bbbb','cccc');
insert testcreate15 value('00001','00001','dddd');
insert testcreate16 value('00001','00001','eeee');

create table testcreate17(
	serial_no varchar(30) not null,
	id varchar(50) primary key not null,
	email varchar(100) primary key not null,
	birthday varchar(30) primary key not null
);
create table testcreate17(
	serial_no varchar(30) not null,
	id varchar(50) not null,
	email varchar(100) not null,
	birthday varchar(30) not null,
	primary key (id, email, birthday)
);

create table testcreate18(
	serial_no varchar(30) not null,
	id varchar(50) not null,
	email varchar(100) not null,
	birthday varchar(30) not null,
	primary key (serial_no, id, email, birthday)
);

create table testcreate19(
	serial_no varchar(30),
	id varchar(50),
	email varchar(100),
	birthday varchar(30),
	unique (serial_no, id, email, birthday)
);

+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| serial_no | varchar(30)  | YES  | MUL | NULL    |       |
| id        | varchar(50)  | YES  |     | NULL    |       |
| email     | varchar(100) | YES  |     | NULL    |       |
| birthday  | varchar(30)  | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+

insert testcreate20 value('0001','0001','0001@com','19970330');
insert testcreate20 value('0002','0002','0002@com','19970330');
insert testcreate20 value('0003','0003','0002@com','19970330');

create table testcreate20(
	serial_no varchar(30),
	id varchar(50),
	email varchar(100),
	birthday varchar(30),
	primary key (serial_no, id, email, birthday)
);
create table testcreate21(
	serial_no varchar(30),
	id varchar(50),
	like_food varchar(255),
	foreign key (id) references testcreate14 (id)
);
create table testcreate22(
	serial_no varchar(30),
	id varchar(50) primary key not null
);
create table testcreate23(
	serial_no varchar(30),
	id varchar(50) primary key,
	address varchar(255),
	foreign key (id) references testcreate22 (id) on update cascade on delete cascade
);

insert testcreate22 value ('0001','0001');
insert testcreate22 value ('0002','0002');
insert testcreate22 value ('0003','0003');
insert testcreate23 value ('0001','0001','aaaa');
insert testcreate23 value ('0002','0002','bbbb');
insert testcreate23 value ('0003','0003','cccc');

delete from testcreate22 where id ='0002';

create table testcreate25(
	serial_no varchar(30) check(serial_no > 0),
	id varchar(50) not null check(id > 0),
	email varchar(100),
	foreign key (id) references testcreate22 (id) on update cascade on delete cascade
);

insert testcreate25 value ('0','0','ccc@ddd.com');
insert testcreate22 value ('0','0');

create table testcreate26(
	serial_no varchar(10) check(serial_no > 10),
	id varchar(10) primary key not null check(id > 10)
);

alter table testcreate26 add (birthday_data varchar(8) default '19001010' not null);
alter table testcreate26 add (post varchar(7) default '1234' not null);
alter table testcreate26 add (address varchar(255) primary key);

create table testcreate27(
	serial_no varchar(10) not null check(serial_no > 0)
);
alter table testcreate27 add (id varchar(10) primary key);

insert testcreate27 value ('0000000001','0000000001');

alter table testcreate27 add (birth_day varchar(8) default '19001010' not null);


alter table testcreate27 modify(birth_day varchar(8) default '19001010');

ALTER TABLE testcreate27 MODIFY (birth_day VARCHAR2(20));

alter table testcreate27 modify birth_day varchar(8);
alter table testcreate27 modify column serial_no varchar(11);
alter table testcreate27 modify column birth_day varchar(6);

alter table testcreate27 modify column birth_day varchar(6);
alter table testcreate27 modify column birth_day varchar(8) default '19001010' not null;
alter table testcreate27 modify column birth_day varchar(8) null;

insert testcreate27 value ('','');





