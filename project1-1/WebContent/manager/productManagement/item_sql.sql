
  CREATE TABLE item 
   (	
   	PNAME VARCHAR2(20) UNIQUE NOT NULL, 
	PNO VARCHAR2(20 BYTE) PRIMARY KEY, 
	COMMENTS VARCHAR2(40 BYTE), 
	CONTENT VARCHAR2(50 BYTE), 
	PRICE NUMBER NOT NULL, 
	STOCK NUMBER NOT NULL, 
	MAIN_IMG VARCHAR2(50 BYTE) NOT NULL, 
	SUB_IMG1 VARCHAR2(50 BYTE), 
	SUB_IMG2 VARCHAR2(50 BYTE), 
	SUB_IMG3 VARCHAR2(50 BYTE), 
	SUB_IMG4 VARCHAR2(50 BYTE), 
	SUB_IMG5 VARCHAR2(50 BYTE), 
	SUB_IMG6 VARCHAR2(50 BYTE), 
	REGDATE DATE
	)