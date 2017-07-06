SELECT * FROM p_member;

CREATE TABLE p_member
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

CREATE SEQUENCE p_member_seq;

SELECT * FROM p_service;
DROP TABLE p_service;

CREATE TABLE p_service
(
	mem_num NUMBER(20),
	s_content CLOB,
	CONSTRAINT FK_p_s_num FOREIGN KEY (mem_num)
    REFERENCES p_member(mem_num)
);

INSERT INTO P_SERVICE (mem_num, s_content)
VALUES(2, '테스트');

SELECT p_service.mem_num, p_service.mem_num, s_content from p_service
INNER JOIN p_member ON p_member.mem_num=p_service.mem_num;


ALTER TABLE p_member ADD
(
	CONSTRAINT FK_SERNUM
	FOREIGN KEY (mem_num)
		REFERENCES p_service(mem_num)
);



SELECT * FROM p_member;

CREATE TABLE p_member
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

CREATE SEQUENCE p_member_seq;

--고객센터 리스트 sql (김재두)
CREATE TABLE p_service
(
	mem_num NUMBER(20),
	title VARCHAR2(30),
	s_content VARCHAR2(200),
    s_regdate DATE,
	CONSTRAINT FK_p_s_num FOREIGN KEY (mem_num)
    REFERENCES p_member(mem_num)
);


--상품문의 리스트 sql (호궁환)
CREATE TABLE qnalist
(
	qna_listnum NUMBER(20) PRIMARY KEY,
	qna_title VARCHAR2(20) NOT NULL,
	qna_pdnum NUMBER(20) NOT NULL,
	qna_writer VARCHAR2(20),
	qna_content CLOB,
	qna_regdate DATE
);

CREATE SEQUENCE qnalist_seq;



INSERT INTO qnalist(qna_listnum, qna_title, qna_pdnum, qna_writer, qna_content, qna_regdate)
								VALUES(qnalist_seq.NEXTVAL, '테스트 제목', 1179, '테스터', '즐거운 하루' ,SYSDATE);


