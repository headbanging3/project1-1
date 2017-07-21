SELECT * FROM member;

CREATE TABLE member
(
  	 mem_num NUMBER(20) PRIMARY KEY,
	id VARCHAR2(20) UNIQUE NOT NULL,
	pwd VARCHAR2(20) NOT NULL,
	name VARCHAR2(20) NOT NULL,
	phone VARCHAR2(20) NOT NULL,
	email VARCHAR2(20),
	addr VARCHAR2(100),
	regdate DATE
);

CREATE SEQUENCE member_seq;

--고객센터 리스트 sql (김재두)
CREATE TABLE service
(
	mem_num NUMBER(20) REFERENCES member(mem_num),
	phone VARCHAR2(20),
	email VARCHAR2(20),
	title VARCHAR2(30),
	content CLOB,
    regdate DATE,
    type VARCHAR2(20),
    state CHAR CHECK(state IN ('1' , '2'))  
);


SELECT * FROM SERVICE;
SELECT * FROM member;
DROP TABLE member;
DROP TABLE service;

UPDATE service 
SET state=1
WHERE rnum=13;




