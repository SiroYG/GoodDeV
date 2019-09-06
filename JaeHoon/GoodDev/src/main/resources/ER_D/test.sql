
/* Drop Tables */

DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE CROWDFUNDING CASCADE CONSTRAINTS;
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

CREATE TABLE BOARD
(
	boardNum number NOT NULL,
	id varchar2(20) NOT NULL,
	title varchar2(30) NOT NULL,
	content varchar2(1000) NOT NULL,
	qType varchar2(20) NOT NULL,
	qCategory varchar2(20) NOT NULL,
	originalFilename varchar2(20) UNIQUE,
	saveFilename varchar2(20) UNIQUE,
	boardDate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (boardNum)
);


CREATE TABLE CROWDFUNDING
(
	crowdfundingNum number NOT NULL,
	itemNum number NOT NULL,
	itemGoalPrice number,
	itemCurrecyPrice number,
	fundingDueDate date,
	PRIMARY KEY (crowdfundingNum)
);


CREATE TABLE HISTORY
(
	historyNum number NOT NULL,
	itemNum number NOT NULL,
	comments varchar2(300),
	itemVersion varchar2(20) NOT NULL,
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
	surveyNum number NOT NULL,
	itemNum number NOT NULL,
	-- 소비자가 입력한 질문지의 점수
	qScore number(2,0) DEFAULT 0 NOT NULL,
	-- 창업자가 질문한 값
	question varchar2(500) NOT NULL,
	-- 질문타입을 지정해서 질문에 따른 점수를 구분하기 위함.
	-- 
	surveyType number(2,0) NOT NULL,
	etc varchar2(1000),
	item_survey_date date DEFAULT SYSDATE NOT NULL,
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
	MTI_seq number NOT NULL,
	id varchar2(20) NOT NULL,
	itemNum number NOT NULL,
	PRIMARY KEY (MTI_seq)
);


CREATE TABLE PATENT
(
	patentNum varchar2(100) NOT NULL,
	patentName varchar2(500) NOT NULL,
	patentHolderName varchar2(500) NOT NULL,
	patentContent varchar2(2000) NOT NULL,
	patentAppDate date NOT NULL,
	-- 등록날짜
	patentRegDate date DEFAULT SYSDATE,
	patenttype varchar2(100) NOT NULL,
	PRIMARY KEY (patentNum)
);


CREATE TABLE PATENTSUB
(
	PatentsubNum number NOT NULL,
	patentNum varchar2(100) NOT NULL,
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
	patentNum varchar2(100) NOT NULL,
	PRIMARY KEY (PTI_seq)
);


CREATE TABLE REPLY
(
	replyNum number NOT NULL,
	boardNum number NOT NULL,
	reply varchar2(300) NOT NULL,
	replyDate date DEFAULT SYSDATE NOT NULL,
	id varchar2(20) NOT NULL,
	PRIMARY KEY (replyNum)
);



/* Create Foreign Keys */

ALTER TABLE REPLY
	ADD FOREIGN KEY (boardNum)
	REFERENCES BOARD (boardNum)
;


ALTER TABLE CROWDFUNDING
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


ALTER TABLE BOARD
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
;


ALTER TABLE MTI
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



