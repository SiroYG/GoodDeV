
--고객 정보 Table
Create table Customer(
CUSTID VARCHAR2(20) primary key,--고객 ID
PASSWORD VARCHAR2(20) NOT NULL ,--비밀번호
EMAIL VARCHAR2(30) NOT NULL,	--고객 Email
DIVISION VARCHAR2(20) NOT NULL, --회원 구분 값(개인고객:personal, 법인고객:company)
NAME VARCHAR2(30) NOT NULL ,	--고객 이름
IDNO VARCHAR2(20) UNIQUE ,		--식별번호(개인:주민번호, 법인:사업자번호)
ADDRESS VARCHAR2(100) 			--고객주소
)
/

--계좌정보 Table
Create table Account(
ACCOUNTNO VARCHAR2(20) PRIMARY KEY,		--계좌 번호
CUSTID VARCHAR2(20) REFERENCES Customer (CUSTID),--고객 ID. CUSTOMER테이블의 CUSTID 참조
ACCOUNTTYPE VARCHAR2(10), 				--계좌 구분 값 (예금계좌: checking, 정기적금계좌: saving, 대출계좌:loan)
BALANCE NUMBER DEFAULT 0 ,				--잔고
PAYMENT NUMBER ,						--적금의 월 납입금
INTEREST NUMBER(3,2) DEFAULT 0,			--이율 (예금계좌는 해당 없음)
STARTDEPOSIT DATE,						--적금/대출 시작일 (예금계좌는 해당 없음),
ENDDEPOSIT DATE,						--적금/대출 종료일 (예금계좌는 해당 없음),
APPROVAL VARCHAR2(2)					--대출승인여부 (승인완료:Y, 승인대기:N)
)
/

--거래내역정보 Table
Create table AccountLog (
LOGID NUMBER PRIMARY KEY, 					-- 일련번호 (PK)
CUSTID VARCHAR2(20) REFERENCES Customer (CustID),	-- 고객 ID (FK)
ACCOUNTNO VARCHAR2(20) REFERENCES Account (ACCOUNTNO),	-- 계좌번호(FK)
TRANSFERNO VARCHAR2(20),					-- 이체 시 상대 계좌 번호
EVENTDATE DATE DEFAULT SYSDATE,				-- 거래 발생일
EVENTTYPE VARCHAR2(10),						-- 거래 종류 (입금: deposit, 출금: withdraw,이체: transfer)
EVENTRECORD VARCHAR2(20), 					-- 거래 시 사용자가 입력한 내용
AMOUNT NUMBER DEFAULT 0 ,					-- 거래 금액
BALANCE NUMBER 								-- 거래 후 잔액
)
/

--질의 게시판 Table
Create table QNABOARD(
BOARDNO NUMBER PRIMARY KEY,							-- 게시판 글번호
CUSTID VARCHAR2(20) REFERENCES Customer (CustID), 	-- 고객 ID. CUSTOMER테이블의 CUSTID 참조
TITLE VARCHAR2(200) NOT NULL ,						-- 글 제목					
CONTENT VARCHAR2(4000) NOT NULL,					-- 질의 내용
REGDATE DATE DEFAULT SYSDATE,						-- 작성 날짜, 시간
ORIGINALFILE VARCHAR2(200),							-- 사용자가 첨부한 파일명
SAVEDFILE VARCHAR2(50),								-- 서버에 실제 저장된 파일명
HITCOUNT NUMBER DEFAULT 0,							-- 글 조회수
REPLYTEXT VARCHAR2(2000),							-- 관리자 답변 내용
REPDATE DATE 										-- 관리자 답변 날짜, 시간
)
/


-- 거래내역정보 테이블의 일련번호에 사용할 시퀀스
Create Sequence ACCOUNTLOG_SEQ;

-- 질의 게시판 테이블의 일련번호에 사용할 시퀀스
Create Sequence QNABOARD_SEQ;







