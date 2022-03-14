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


-- Reference https://github.com/doubleirish/mybatis-spring-boot README.md
CREATE TABLE IF NOT EXISTS PUBLISHERS  (
  ID               INT          NOT NULL AUTO_INCREMENT  PRIMARY KEY
  ,NAME            VARCHAR(255) NOT NULL
  ,PHONE           VARCHAR(30)
  ,constraint PUBLISHERS_NAME_UC unique (NAME)
);

INSERT INTO PUBLISHERS (  NAME, PHONE   )
values( 'Manning' ,'(425) 555-1212');

INSERT INTO PUBLISHERS (  NAME, PHONE   )
values( 'Apress' ,'(206) 555-1234');