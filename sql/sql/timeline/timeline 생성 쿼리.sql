drop table timeline;
drop sequence timeline_no_seq;

CREATE TABLE timeline
( 
no           NUMBER(8),
content      VARCHAR2(4000) NOT NULL,
file_no      NUMBER(20),
member_no    NUMBER(8),
member_name  VARCHAR2(30),
likes		 NUMBER(38),
reg_date	 DATE NOT NULL,
imagedir	VARCHAR2(120)
) ;

ALTER TABLE timeline
ADD ( CONSTRAINT timeline_no_pk PRIMARY KEY ( no ) );

CREATE SEQUENCE timeline_no_seq
 START WITH     1
 INCREMENT BY   1
 MAXVALUE       99999999
 NOCACHE
 NOCYCLE;