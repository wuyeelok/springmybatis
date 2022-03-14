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


CREATE TABLE IF NOT EXISTS BOOKS (
  ID                  INT          NOT NULL  AUTO_INCREMENT PRIMARY KEY
  ,ISBN               VARCHAR(13)  NOT NULL
  ,AUTHOR_FIRST_NAME  VARCHAR(255) NOT NULL
  ,AUTHOR_LAST_NAME   VARCHAR(255) NOT NULL
  ,TITLE              VARCHAR(255) NOT NULL
  ,DESCRIPTION        VARCHAR(750) NOT NULL
  ,GENRE	            VARCHAR(255) NOT NULL
  ,PRICE              DOUBLE       NOT NULL
  ,PUBLISHER          VARCHAR(255)
  ,PUBLISHED_ON       DATE
  ,constraint books_isbn_uc unique (ISBN)
);

INSERT INTO BOOKS (ISBN,  TITLE, AUTHOR_FIRST_NAME, AUTHOR_LAST_NAME,  GENRE,  PRICE, DESCRIPTION )
values('1430241071', 'Pro Spring 3'  ,        'Clarence',         'Ho', 'Java',  19.99,
       'Pro Spring 3  with the latest that the Spring Framework has to offer');

INSERT INTO BOOKS (ISBN, TITLE,AUTHOR_FIRST_NAME, AUTHOR_LAST_NAME,GENRE,  PRICE, DESCRIPTION )
values('161729120X', 'Spring In Action'  , 'Craig','Walls', 'Java',  29.99,
       'Spring in Action, Fourth Edition is a hands-on guide to the Spring Framework, ');

INSERT INTO BOOKS (ISBN, TITLE,  AUTHOR_FIRST_NAME, AUTHOR_LAST_NAME, GENRE,  PRICE, DESCRIPTION )
values('193239415X', 'Hibernate In Action'  , 'Christian','Bauer', 'Java',  9.99,
       'Hibernate in Action  explains all the concepts you need');

INSERT INTO BOOKS (ISBN,  TITLE,   AUTHOR_FIRST_NAME, AUTHOR_LAST_NAME,   GENRE,  PRICE, DESCRIPTION )
values('1931520720', 'Stories of Your Life and Others'  , 'Ted ',' Chiang', 'Science Fiction',  12.25,
       ' includes his first eight published stories plus the author''s story notes ');

CREATE TABLE IF NOT EXISTS  USERS (
  ID               INT         NOT NULL AUTO_INCREMENT  PRIMARY KEY,
  USER_NAME        VARCHAR(15) NOT NULL,
  FIRST_NAME       VARCHAR(50) NOT NULL,
  LAST_NAME        VARCHAR(50) NOT NULL,
  ACTIVE_SINCE     DATE,
  constraint users_username_UC unique (USER_NAME)
);

INSERT INTO USERS (USER_NAME,   FIRST_NAME, LAST_NAME,  ACTIVE_SINCE )
            values('credmond', 'Conor'  , 'Redmond', '2014-12-31' );

INSERT INTO USERS (USER_NAME,   FIRST_NAME, LAST_NAME,  ACTIVE_SINCE )
            values('jhackett', 'Jack'  ,    'Hackett',   '2014-02-28' );

INSERT INTO USERS (USER_NAME,   FIRST_NAME, LAST_NAME,  ACTIVE_SINCE )
             values('dmcguire', 'Dougal'  ,    'McGuire',   '2014-07-04' );

INSERT INTO USERS (USER_NAME,   FIRST_NAME, LAST_NAME,  ACTIVE_SINCE )
            values('tcrilly', 'Ted'  , 'Crilly', '2011-12-31');
