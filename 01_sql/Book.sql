--Book sample project 

/*
	테이블 : BOOK											 | 테이블 : MANAGER
	---------------------------------------------------------| ---------------------------------------------------------
	컬럼명,		데이터 타입(크기),		제약조건			 |	컬럼명,		데이터 타입(크기),		제약조건
	---------------------------------------------------------| --------------------------------------------------------
	BOOK_SEQ	NUMBER					PK					 |	MANAGER_SEQ		NUMBER				PK
	ISBN		VARCHAR2(13)			U					 |	MANAGER_ID		VARCHAR2(10)		U
	TITLE		VARCHAR2(50)			NOT NULL			 |	NAME			VARCHAR2(30)
	AUTHOR		VARCHAR2(30)								 |	PASSWORD		VARCHAR2(10)		NOT NULL
	COMPANY_CD	NUMBER(4)								 	 |	REG_ID			VARCHAR2(10)
	PRICE		NUMVER(6)									 |	MOD_DATE		DATE
	QUANTITY	NUMBER(4)									 |	
	REG_ID		VARCHAR2(10)								 |
	REG_DATE	DATE					DEFAULT SYSDATE		 |
	MOD_ID		VARCHAR2(10)								 |
	MOD_DATE	DATE										 |
	---------------------------------------------------------|-------------------------------------------------------------
	테이블 명 : CODE										 |
	---------------------------------------------------------|
	CODD		NUMBER(4)				PK
	P_CODE		NUMBER(4)				NOT NULL
	CODE_NM		VARCHAR2(30)			NOT NULL
	USE_YN		CHAR(1)
	CODE_VAL	VARCHAR2(300)			NOT NULL
	CODE_DESC	VARCHAR2(300)
	ORDER		NUMBER
	REG_ID		VARCHAR2(10)
	REG_DATE	DATE					DEFAULT SYSDATE	
	MOD_ID		VARCHAR2(10)
	MOD_DATE	DATE
*/
DROP TABLE BOOK;
CREATE TABLE BOOK
( BOOK_SEQ		NUMBER
, ISBN			VARCHAR2(13)
, TITLE			VARCHAR2(50)	NOT NULL
, AUTHOR		VARCHAR2(30)
, CONTENT		VARCHAR2(3000)
, COMPANY_CD 	NUMBER
, PRICE			NUMBER
, REG_ID		VARCHAR2(10)
, REG_DATE		DATE			DEFAULT SYSDATE
, MOD_ID		VARCHAR2(10)
, MOD_DATE		DATE
, CONSTRAINT PK_BOOK PRIMARY KEY(BOOK_SEQ)
, CONSTRAINT U_BOOK_ISBN UNIQUE(ISBN)
);


INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', '채식주의자', '한강', '맨부커 상을 받은 한강의 소설', 1001, 247, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936477196', '선량한 차별주의자', '김지혜', '선량한 마음만으로 평등은 이루어지지 않는다!', 1001, 244, 13500, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936456894', '페인트', '이희영', '지금부터 부모 면접을 시작하겠습니다!', 1001, 247, 10800, 7, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159039690', '어린왕자(초판본)', '생택쥐페리', '‘부끄러운 어른’들에게 던지는 삶과 희망의 메시지', 1002, 150, 9800, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159037931', '인간실격(초판본)', '다자이 오사무', '일본 데카당스 문학의 대표 작가 다자이 오사무가 그린 이 시대 인간들의 위선과 잔혹성의 초상', 1002, 184, 6930, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159036514', '데미안(초판본)', '헤르만 헤세', '고뇌하는 청춘과 자연에 대한 동경, 인간의 양면성 등을 작품에 담았다', 1002, 248, 10800, 4, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', '제 인생에 답이 없어요', '선바', '크리에이터 선바의 거침없는 현생만담', 1003, 192, 10800, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791162202913', '모든 순간이 너였다', '하태완', '반짝반짝 빛나던 우리의 밤을, 꿈을, 사랑을 이야기하다 | 하태완 에세이', 1003, 272, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182560', '인간 본성의 법칙', '로버트 그린', '500만 년에 걸쳐 형성된 인간 본성에 관한 탐구서!', 1003, 920, 28800, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', '죽고 싶지만 떡볶이는 먹고 싶어', '백세희', '의심 없이 편안하게 사랑하고 사랑받고 싶은 한 사람의 이야기', 1004, 208, 12420, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394578', '죽고 싶지만 떡볶이는 먹고 싶어. 2', '백세희', '맨부커 상을 받은 한강의 소설', 1004, 264, 12420, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394523', '취하지 않고서야', '김현경 , 장하련 , 재은', '고민과 용기와 추억을 앓아가며 써내려간 이야기', 1004, 268, 12420, 1, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', '책은 도끼다', '박웅현', '인문학으로 광고하는 박웅현이 들려주는 풍요로운 삶을 위한 깊이 있는 책 읽기의 정수!', 1005, 348, 14400, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956056609', '다시, 책은 도끼다', '박웅현', '베스트셀러 《책은 도끼다》의 저자 박웅현의 신작
정답이라고 주장할 수 있는 독법은 없으나, ‘이 사람의 것’이라면 믿을 만하다고 여겨지는 독법은 있다. 바로, 베스트셀러 《책은 도끼다》의 저자 박웅현의 독법이 그러하다. 그런 그가 《책은 도끼다》 이후 5년 만에 자신의 이름을 내걸은 인문학 강독회로 돌아왔다. 모두가 후속작이 나오기만을 기다려왔던 책, 그래서 제목도 『다시, 책은 도끼다』이다.', 1005, 349, 14400, 2, 0);

COMMIT;
-----------------------------------------------------------------------------------------------------------------
-- book 테이블의 기본 쿼리들 작성
-- 1. 1건 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.book_seq = 1
;

-- 2. 전체 조회
-- (1) 출판사 코드로 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.company_cd = 11
;
-- (2) 일정 가격 이상인 도서 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.price >= 10000
;
-- (3) 가격 범위 도서 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.price BETWEEN 10000 AND 15000
;
-- (4) 일정 가격 이하인 도서 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.price <= 15000
;
-- (5) 제목, 저자, 출판사 조건 종합 조회
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd 
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
 WHERE b.title LIKE '%다%'
    OR b.author LIKE '%다%'
	OR b.content LIKE '%다%'
	OR b.company_nm LIKE '%다%'
;

SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd
	 , b.company_nm
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM v_book b
;

-- 3. 1건 입력

-- 4. 1건 수정

-- 5. 1건 삭제
------------------------------------------------------------------------------------------------
DROP TABLE MANAGER;
CREATE TABLE MANAGER
( MANAGER_SEQ	NUMBER
, MANAGER_ID	VARCHAR2(10)	NOT NULL
, NAME			VARCHAR2(30)
, PASSWORD		VARCHAR2(10)	NOT NULL
, REG_ID		VARCHAR2(10)
, REG_DATE		DATE			DEFAULT SYSDATE
, MOD_ID		VARCHAR2(10)
, MOD_DATE		DATE
, CONSTRAINT PK_MANAGER PRIMARY KEY(MANAGER_SEQ)
, CONSTRAINT U_MANAGER_ID UNIQUE(MANAGER_ID)
);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'root', '수퍼관리자', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '관리자', 'admin', 0);

COMMIT;

DROP TABLE CODE;
CREATE TABLE CODE
( CODE			NUMBER(4)
, P_CODE		NUMBER(4)		NOT NULL
, CODE_NM		VARCHAR2(30)	NOT NULL
, CODE_VAL		VARCHAR2(300)   NOT NULL
, USE_YN		CHAR(1)
, CODE_DESC		VARCHAR2(300)
, SORT_ORDER	NUMBER			NOT NULL
, REG_ID		VARCHAR2(10)
, REG_DATE		DATE			DEFAULT SYSDATE
, MOD_ID		VARCHAR2(10)
, MOD_DATE		DATE
, CONSTRAINT PK_CODE PRIMARY KEY(CODE)
, CONSTRAINT U_P_CODE UNIQUE(P_CODE)
);

/* -----------------------------------------------------
	출판사 번호와 출판사 이름을 코드로 관리
	출판사 관련 코드는 1000번대가 출판사 코드
	자세한 개별 출판사의 정보는 1001, 1002, 1003, ... 순ㅅ로 증가하도록 실제 데이터를 넣고 시작	
*/
-- CODE 출판사 INSERT INTO 구문 작성
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '출판사' 'Y', '출판사 코드', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', '창비' 'Y', '창작과 비평사', 0, 1);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '더스토리' 'Y', '더 스토리', 0, 2);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '위즈덤' 'Y', '위즈덤 하우스', 0, 3);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', '흔' 'Y', '독립출판 흔', 0, 4);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '북하우스' 'Y', '북하우스', 0, 5);
COMMIT;

-- 시퀀스 명 : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1씩 증가
DROP SEQUENCE SEQ_BOOK
CREATE SEQUENCE SEQ_BOOK
NOMAXVALUE
NOCYCLE
INCREMENT BY 1
;

DROP SEQUENCE SEQ_MANAGER
CREATE SEQUENCE SEQ_MANAGER
NOMAXVALUE
NOCYCLE
INCREMENT BY 1
;

/* --------------------------------------
	출판사 명이 같이 보이는 뷰를 작성
	-------------------------------------
*/

CREATE OR REPLACE VIEW v_book 
AS
SELECT b.book_seq
	 , b.isbn
	 , b.title
	 , b.author
	 , b.content
	 , b.company_cd company_nm
	 , c.code_val
	 , b.totalpage
	 , b.price
	 , b.quantity
	 , b.reg_id
	 , b.reg_date
	 , b.mod_id
	 , b.mod_date
  FROM BOOK b JOIN CODE c ON b.company_cd = c.code
WITH READ ONLY
);