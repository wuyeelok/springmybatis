CREATE DATABASE springmybatis;

use springmybatis;

create table employee (

	id int not null primary key auto_increment,
	fullname varchar(50) not null,
	email varchar(50) not null,
	gender varchar(50),
	hobbies varchar(50),
	country varchar(50),
	address varchar(50)

);

INSERT into EMPLOYEE 
(FULLNAME, EMAIL, GENDER, HOBBIES, COUNTRY, ADDRESS)
values
('rrsdwerfse','rrsdwerfse@gmail.com', 'Female', 'basketball', 'USA', 'ghhh');