
/* Drop Tables */

DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE BOARD CASCADE CONSTRAINTS;
DROP TABLE fundingOption CASCADE CONSTRAINTS;
DROP TABLE FundingTable CASCADE CONSTRAINTS;
DROP TABLE CROWDFUNDING CASCADE CONSTRAINTS;
DROP TABLE HISTORY CASCADE CONSTRAINTS;
DROP TABLE PTI CASCADE CONSTRAINTS;
DROP TABLE SURVEY CASCADE CONSTRAINTS;
DROP TABLE QUESTION CASCADE CONSTRAINTS;
DROP TABLE QUESTION_TIME CASCADE CONSTRAINTS;
DROP TABLE ITEM CASCADE CONSTRAINTS;
DROP TABLE DOCUMENT CASCADE CONSTRAINTS;
DROP TABLE PATENTSUB CASCADE CONSTRAINTS;
DROP TABLE devMember CASCADE CONSTRAINTS;
DROP TABLE officialFile CASCADE CONSTRAINTS;




/* Drop Sequences */

DROP SEQUENCE BOARD_seq;

DROP SEQUENCE CROWDFUNDING_seq;

DROP SEQUENCE DOCUMENT_seq;

DROP SEQUENCE QUESTION_TIME_seq;

DROP SEQUENCE HISTORY_seq;

DROP SEQUENCE ITEM_seq;

DROP SEQUENCE SURVEY_seq;

DROP SEQUENCE QUESTION_seq;

DROP SEQUENCE MTI_seq;

DROP SEQUENCE PATENTSUB_seq;

DROP SEQUENCE PTI_seq;

DROP SEQUENCE REPLY_seq;

DROP SEQUENCE FundingTable_seq;

DROP SEQUENCE fundingOption_seq;

DROP SEQUENCE officalFile_seq;

/* Create Sequences */
CREATE SEQUENCE BOARD_seq;

CREATE SEQUENCE CROWDFUNDING_seq;

CREATE SEQUENCE DOCUMENT_seq;

CREATE SEQUENCE QUESTION_TIME_seq;

CREATE SEQUENCE HISTORY_seq;

CREATE SEQUENCE ITEM_seq;

CREATE SEQUENCE SURVEY_seq;

CREATE SEQUENCE QUESTION_seq;

CREATE SEQUENCE PATENTSUB_seq;

CREATE SEQUENCE PTI_seq;

CREATE SEQUENCE REPLY_seq;

CREATE SEQUENCE FundingTable_seq;

CREATE SEQUENCE fundingOption_seq;

CREATE SEQUENCE officalFile_seq;

/* Create Tables */

CREATE TABLE BOARD
(
	boardNum number NOT NULL,
	memberId varchar2(20) NOT NULL,
	title varchar2(30) NOT NULL,
	content varchar2(1000) NOT NULL,
	qType varchar2(20) NOT NULL,
	qCategory varchar2(20) NOT NULL,
	originalFilename varchar2(100),
	saveFilename varchar2(100) UNIQUE,
	boardDate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (boardNum)
);


CREATE TABLE CROWDFUNDING
(
	crowdfundingNum number NOT NULL,
	itemNum number NOT NULL,
	itemGoalPrice number NOT NULL,
	itemCurrecyPrice number,
	fundingDueDate date NOT NULL,
	fundingStartDate date NOT NULL,
	memberId varchar2(20) NOT NULL,
	PRIMARY KEY (crowdfundingNum)
);


CREATE TABLE devMember
(
	memberId varchar2(20) NOT NULL,
	memberPw varchar2(20) NOT NULL,
	memberType varchar2(20) NOT NULL,
	email varchar2(20) NOT NULL,
	fundPrice number,
	memberName varchar2(20) NOT NULL,
	phoneNum varchar2(20) NOT NULL,
	PRIMARY KEY (memberId)
);


CREATE TABLE DOCUMENT
(
	DocumentNum number NOT NULL,
	PatentsubNum number NOT NULL,
	documentFilename varchar2(100),
	saveDocumentFilename varchar2(100) UNIQUE,
	PRIMARY KEY (DocumentNum)
);


CREATE TABLE fundingOption
(
	fundingOptionNum number NOT NULL,
	crowdfundingNum number NOT NULL,
	optionType varchar2(300) NOT NULL,
	optionPrice number NOT NULL,
	PRIMARY KEY (fundingOptionNum)
);


CREATE TABLE FundingTable
(
	fundingReplyNum number NOT NULL,
	crowdfundingNum number NOT NULL,
	memberId varchar2(20) NOT NULL,
	investment number NOT NULL,
	fundingReply varchar2(500) NOT NULL,
	fundingReplydate date NOT NULL,
	PRIMARY KEY (fundingReplyNum)
);


CREATE TABLE HISTORY
(
	historyNum number NOT NULL,
	itemNum number NOT NULL,
	comments varchar2(300),
	itemVersion varchar2(20) NOT NULL,
	historyDate date NOT NULL,
	PRIMARY KEY (historyNum)
);


CREATE TABLE ITEM
(
	itemNum number NOT NULL,
	memberId varchar2(20) NOT NULL,
	itemType varchar2(100) NOT NULL,
	ideaDate varchar2(100) DEFAULT '' NOT NULL,
	itemName varchar2(30) NOT NULL UNIQUE,
	price number NOT NULL,
	itemContent varchar2(300) NOT NULL,
	itemRegDate date,
	itemImagename varchar2(100),
	saveItemImage varchar2(100) UNIQUE,
	documentFilename varchar2(100),
	saveDocumentFilename varchar2(100) UNIQUE,
	PRIMARY KEY (itemNum)
);


CREATE TABLE officialFile
(
	officalFile_seq varchar2(100) NOT NULL,
	originalFileName varchar2(100) NOT NULL,
	saveFileName varchar2(100) UNIQUE,
	PRIMARY KEY (officalFile_seq)
);


CREATE TABLE PATENT
(
	patentNum varchar2(100) NOT NULL,
	patentName varchar2(500),
	patentHolderName varchar2(500) NOT NULL,
	patentContent varchar2(2000),
	patentAppDate date NOT NULL,
	-- 등록날짜
	patentRegDate date,
	patenttype varchar2(100),
	PRIMARY KEY (patentNum)
);


CREATE TABLE PATENTSUB
(
	PatentsubNum number NOT NULL,
	patentNum varchar2(100) NOT NULL,
	memberId varchar2(20) NOT NULL,
	referenceFilename varchar2(100),
	saveReferenceFilename varchar2(100) UNIQUE,
	PRIMARY KEY (PatentsubNum)
);


CREATE TABLE PTI
(
	PTI_seq number NOT NULL,
	itemNum number NOT NULL,
	patentNum varchar2(100) NOT NULL,
	contract varchar2(20) NOT NULL,
	contractDate date,
	PRIMARY KEY (PTI_seq)
);


CREATE TABLE QUESTION
(
	questionNum number NOT NULL,
	questionTimeNum number NOT NULL,
	-- 창업자가 질문한 값
	question varchar2(500) NOT NULL,
	PRIMARY KEY (questionNum)
);


CREATE TABLE QUESTION_TIME
(
	questionTimeNum number NOT NULL,
	itemNum number NOT NULL,
	questionTitle varchar2(300) NOT NULL,
	-- 설문추가 설명
	description varchar2(1000),
	startDate date NOT NULL,
	dueDate date DEFAULT SYSDATE NOT NULL,
	etc varchar2(1000),
	memberId varchar2(20) NOT NULL,
	PRIMARY KEY (questionTimeNum)
);


CREATE TABLE REPLY
(
	replyNum number NOT NULL,
	boardNum number NOT NULL,
	reply varchar2(300) NOT NULL,
	replyDate date DEFAULT SYSDATE NOT NULL,
	memberId varchar2(20) NOT NULL,
	PRIMARY KEY (replyNum)
);


CREATE TABLE SURVEY
(
	surveyNum number NOT NULL,
	questionNum number NOT NULL,
	-- 소비자가 입력한 질문지의 점수
	qValuable number(2,0) DEFAULT 0 NOT NULL,
	writtenDate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (surveyNum)
);



/* Create Foreign Keys */

ALTER TABLE REPLY
	ADD FOREIGN KEY (boardNum)
	REFERENCES BOARD (boardNum)
;


ALTER TABLE fundingOption
	ADD FOREIGN KEY (crowdfundingNum)
	REFERENCES CROWDFUNDING (crowdfundingNum)
;


ALTER TABLE FundingTable
	ADD FOREIGN KEY (crowdfundingNum)
	REFERENCES CROWDFUNDING (crowdfundingNum)
;


ALTER TABLE BOARD
	ADD FOREIGN KEY (memberId)
	REFERENCES devMember (memberId)
;


ALTER TABLE ITEM
	ADD FOREIGN KEY (memberId)
	REFERENCES devMember (memberId)
;


ALTER TABLE PATENTSUB
	ADD FOREIGN KEY (memberId)
	REFERENCES devMember (memberId)
;


ALTER TABLE CROWDFUNDING
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE HISTORY
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE PTI
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE QUESTION_TIME
	ADD FOREIGN KEY (itemNum)
	REFERENCES ITEM (itemNum)
;


ALTER TABLE PATENTSUB
	ADD FOREIGN KEY (patentNum)
	REFERENCES PATENT (patentNum)
;


ALTER TABLE PTI
	ADD FOREIGN KEY (patentNum)
	REFERENCES PATENT (patentNum)
;


ALTER TABLE DOCUMENT
	ADD FOREIGN KEY (PatentsubNum)
	REFERENCES PATENTSUB (PatentsubNum)
;


ALTER TABLE SURVEY
	ADD FOREIGN KEY (questionNum)
	REFERENCES QUESTION (questionNum)
;


ALTER TABLE QUESTION
	ADD FOREIGN KEY (questionTimeNum)
	REFERENCES QUESTION_TIME (questionTimeNum)
;



