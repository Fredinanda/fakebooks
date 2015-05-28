drop table member;
drop sequence member_no_seq;

CREATE TABLE member
( 
no        	NUMBER(8),
firstname      	VARCHAR2(30),
lastname      	VARCHAR2(30),
email    	VARCHAR2(80),
password 	VARCHAR2(30),
gender    	VARCHAR2(10),
birth	  	DATE NOT NULL,
workplace	VARCHAR2(50),
address     VARCHAR2(80),
comments	VARCHAR2(150),
reg_date    DATE NOT NULL,
imagedir	VARCHAR2(120)
);

ALTER TABLE member
ADD ( CONSTRAINT member_no_pk PRIMARY KEY ( no ) );


CREATE SEQUENCE member_no_seq
 START WITH     1
 INCREMENT BY   1
 MAXVALUE       99999999
 NOCACHE
 NOCYCLE;