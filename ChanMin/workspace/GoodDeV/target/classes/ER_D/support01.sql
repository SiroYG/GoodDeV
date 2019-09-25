
/* Drop Tables */

DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE board CASCADE CONSTRAINTS;
DROP TABLE CLOUDFUNDING CASCADE CONSTRAINTS;
DROP TABLE HISTORY CASCADE CONSTRAINTS;
DROP TABLE ITEM_SURVEY CASCADE CONSTRAINTS;
DROP TABLE MTI CASCADE CONSTRAINTS;
DROP TABLE PTI CASCADE CONSTRAINTS;
DROP TABLE ITEM CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE PATENTSUB CASCADE CONSTRAINTS;
DROP TABLE PATENT CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_deapartment_departno;




/* Create Sequences */

CREATE SEQUENCE SEQ_deapartment_departno INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE board
(
	boardNum number NOT NULL,
	id varchar2(20) NOT NULL,
	title varchar2(30) NOT NULL,
	content varchar2(1000) NOT NULL,
	qType varchar2(20) NOT NULL,
	originalFilename varchar2(20) UNIQUE,
	saveFilename varchar2(20) UNIQUE,
	boardDate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (boardNum)
);


CREATE TABLE CLOUDFUNDING
(
	CouldfundingNum number NOT NULL,
	itemNum number NOT NULL,
	itemGoalPrice number,
	itemCurrecyPrice number,
	fundingDueDate date,
	PRIMARY KEY (CouldfundingNum)
);


CREATE TABLE HISTORY
(
	historyNum number NOT NULL,
	itemNum number DEFAULT item_seq NOT NULL,
	comment varchar2(300),
	version varchar2(20) NOT NULL,
	startdate date NOT NULL,
	enddate date NOT NULL,
	PRIMARY KEY (historyNum)
);


CREATE TABLE ITEM
(
	itemNum number NOT NULL,
	ideaDate date DEFAULT SYSDATE NOT NULL,
	itemName varchar2(30) NOT NULL,
	price number,
	-- 계약 체결유무를 판단하기 위한 칼럼
	contract varchar2(20) DEFAULT 'N' NOT NULL,
	itemContent varchar2(300) NOT NULL,
	itemOption varchar2(30) NOT NULL,
	itemRegDate date,
	itemImagename varchar2(20),
	saveItemImage varchar2(20),
	avgValuable number(2,0),
	avgCommerciality number(2,0),
	avgProductivity number(2,0),
	PRIMARY KEY (itemNum)
);


CREATE TABLE ITEM_SURVEY
(
	surveyNum number DEFAULT ITEM_SURVEY_seq NOT NULL,
	itemNum number NOT NULL,
	id varchar2(20) NOT NULL,
	valuable number(2,0) DEFAULT 0 NOT NULL,
	commerciality number(2,0) NOT NULL,
	productivity number(2,0) NOT NULL,
	etc varchar2(1000),
	PRIMARY KEY (surveyNum)
);


CREATE TABLE member
(
	id varchar2(20) NOT NULL,
	pw varchar2(20) NOT NULL,
	memberType varchar2(20) NOT NULL,
	email varchar2(20) NOT NULL,
	fundPrice number,
	memberName varchar2(20) NOT NULL,
	phoneNum varchar2(20) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE MTI
(
	MTP_seq number NOT NULL,
	id varchar2(20) NOT NULL,
	itemNum number NOT NULL,
	PRIMARY KEY (MTP_seq)
);


CREATE TABLE PATENT
(
	patentNum varchar2(20) NOT NULL,
	patentName varchar2(100) NOT NULL,
	patentHolderName varchar2(20) NOT NULL,
	patentContent varchar2(2000) NOT NULL,
	patentAppDate date NOT NULL,
	-- 등록날짜
	patentRegDate date DEFAULT SYSDATE,
	patenttype varchar2(20) NOT NULL,
	PRIMARY KEY (patentNum)
);


CREATE TABLE PATENTSUB
(
	PatentsubNum number NOT NULL,
	patentNum varchar2(20) NOT NULL,
	documentFilename varchar2(20),
	saveDocumentFilename varchar2(20),
	referenceFilename varchar2(20),
	saveReferenceFilename varchar2(20),
	PRIMARY KEY (PatentsubNum)
);


CREATE TABLE PTI
(
	PTI_seq number NOT NULL,
	itemNum number NOT NULL,
	patentNum varchar2(20) NOT NULL,
	PRIMARY KEY (PTI_seq)
);


CREATE TABLE reply
(
	replyNum number NOT NULL,
	boardNum number NOT NULL,
	id varchar2(20) NOT NULL,
	reply varchar2(300) NOT NULL,
	replyDate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (replyNum)
);



/* Create Foreign Keys */

ALTER TABLE reply
	ADD FOREIGN KEY (boardNum)
	REFERENCES board (boardNum)
;


ALTER TABLE CLOUDFUNDING
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE HISTORY
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE ITEM_SURVEY
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE MTI
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE PTI
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE board
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE ITEM_SURVEY
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE MTI
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE PATENTSUB
	ADD FOREIGN KEY (patentNum)
	REFERENCES PATENT (patentNum)
;


ALTER TABLE PTI
	ADD FOREIGN KEY (patentNum)
	REFERENCES PATENT (patentNum)
;



