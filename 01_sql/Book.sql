<<<<<<< HEAD
ï»¿--Book sample project 

/*
	í…Œì´ë¸” : BOOK											 | í…Œì´ë¸” : MANAGER
	---------------------------------------------------------| ---------------------------------------------------------
	ì»¬ëŸ¼ëª…,		ë°ì´í„° íƒ€ì…(í¬ê¸°),		ì œì•½ì¡°ê±´			 |	ì»¬ëŸ¼ëª…,		ë°ì´í„° íƒ€ì…(í¬ê¸°),		ì œì•½ì¡°ê±´
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
	í…Œì´ë¸” ëª… : CODE										 |
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
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'ì±„ì‹ì£¼ì˜ì', 'í•œê°•', 'ë§¨ë¶€ì»¤ ìƒì„ ë°›ì€ í•œê°•ì˜ ì†Œì„¤', 1001, 247, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936477196', 'ì„ ëŸ‰í•œ ì°¨ë³„ì£¼ì˜ì', 'ê¹€ì§€í˜œ', 'ì„ ëŸ‰í•œ ë§ˆìŒë§Œìœ¼ë¡œ í‰ë“±ì€ ì´ë£¨ì–´ì§€ì§€ ì•ŠëŠ”ë‹¤!', 1001, 244, 13500, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936456894', 'í˜ì¸íŠ¸', 'ì´í¬ì˜', 'ì§€ê¸ˆë¶€í„° ë¶€ëª¨ ë©´ì ‘ì„ ì‹œì‘í•˜ê² ìŠµë‹ˆë‹¤!', 1001, 247, 10800, 7, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159039690', 'ì–´ë¦°ì™•ì(ì´ˆíŒë³¸)', 'ìƒíƒì¥í˜ë¦¬', 'â€˜ë¶€ë„ëŸ¬ìš´ ì–´ë¥¸â€™ë“¤ì—ê²Œ ë˜ì§€ëŠ” ì‚¶ê³¼ í¬ë§ì˜ ë©”ì‹œì§€', 1002, 150, 9800, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159037931', 'ì¸ê°„ì‹¤ê²©(ì´ˆíŒë³¸)', 'ë‹¤ìì´ ì˜¤ì‚¬ë¬´', 'ì¼ë³¸ ë°ì¹´ë‹¹ìŠ¤ ë¬¸í•™ì˜ ëŒ€í‘œ ì‘ê°€ ë‹¤ìì´ ì˜¤ì‚¬ë¬´ê°€ ê·¸ë¦° ì´ ì‹œëŒ€ ì¸ê°„ë“¤ì˜ ìœ„ì„ ê³¼ ì”í˜¹ì„±ì˜ ì´ˆìƒ', 1002, 184, 6930, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159036514', 'ë°ë¯¸ì•ˆ(ì´ˆíŒë³¸)', 'í—¤ë¥´ë§Œ í—¤ì„¸', 'ê³ ë‡Œí•˜ëŠ” ì²­ì¶˜ê³¼ ìì—°ì— ëŒ€í•œ ë™ê²½, ì¸ê°„ì˜ ì–‘ë©´ì„± ë“±ì„ ì‘í’ˆì— ë‹´ì•˜ë‹¤', 1002, 248, 10800, 4, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', 'ì œ ì¸ìƒì— ë‹µì´ ì—†ì–´ìš”', 'ì„ ë°”', 'í¬ë¦¬ì—ì´í„° ì„ ë°”ì˜ ê±°ì¹¨ì—†ëŠ” í˜„ìƒë§Œë‹´', 1003, 192, 10800, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791162202913', 'ëª¨ë“  ìˆœê°„ì´ ë„ˆì˜€ë‹¤', 'í•˜íƒœì™„', 'ë°˜ì§ë°˜ì§ ë¹›ë‚˜ë˜ ìš°ë¦¬ì˜ ë°¤ì„, ê¿ˆì„, ì‚¬ë‘ì„ ì´ì•¼ê¸°í•˜ë‹¤ | í•˜íƒœì™„ ì—ì„¸ì´', 1003, 272, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182560', 'ì¸ê°„ ë³¸ì„±ì˜ ë²•ì¹™', 'ë¡œë²„íŠ¸ ê·¸ë¦°', '500ë§Œ ë…„ì— ê±¸ì³ í˜•ì„±ëœ ì¸ê°„ ë³¸ì„±ì— ê´€í•œ íƒêµ¬ì„œ!', 1003, 920, 28800, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', 'ì£½ê³  ì‹¶ì§€ë§Œ ë–¡ë³¶ì´ëŠ” ë¨¹ê³  ì‹¶ì–´', 'ë°±ì„¸í¬', 'ì˜ì‹¬ ì—†ì´ í¸ì•ˆí•˜ê²Œ ì‚¬ë‘í•˜ê³  ì‚¬ë‘ë°›ê³  ì‹¶ì€ í•œ ì‚¬ëŒì˜ ì´ì•¼ê¸°', 1004, 208, 12420, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394578', 'ì£½ê³  ì‹¶ì§€ë§Œ ë–¡ë³¶ì´ëŠ” ë¨¹ê³  ì‹¶ì–´. 2', 'ë°±ì„¸í¬', 'ë§¨ë¶€ì»¤ ìƒì„ ë°›ì€ í•œê°•ì˜ ì†Œì„¤', 1004, 264, 12420, 3, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394523', 'ì·¨í•˜ì§€ ì•Šê³ ì„œì•¼', 'ê¹€í˜„ê²½ , ì¥í•˜ë ¨ , ì¬ì€', 'ê³ ë¯¼ê³¼ ìš©ê¸°ì™€ ì¶”ì–µì„ ì•“ì•„ê°€ë©° ì¨ë‚´ë ¤ê°„ ì´ì•¼ê¸°', 1004, 268, 12420, 1, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', 'ì±…ì€ ë„ë¼ë‹¤', 'ë°•ì›…í˜„', 'ì¸ë¬¸í•™ìœ¼ë¡œ ê´‘ê³ í•˜ëŠ” ë°•ì›…í˜„ì´ ë“¤ë ¤ì£¼ëŠ” í’ìš”ë¡œìš´ ì‚¶ì„ ìœ„í•œ ê¹Šì´ ìˆëŠ” ì±… ì½ê¸°ì˜ ì •ìˆ˜!', 1005, 348, 14400, 2, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956056609', 'ë‹¤ì‹œ, ì±…ì€ ë„ë¼ë‹¤', 'ë°•ì›…í˜„', 'ë² ìŠ¤íŠ¸ì…€ëŸ¬ ã€Šì±…ì€ ë„ë¼ë‹¤ã€‹ì˜ ì €ì ë°•ì›…í˜„ì˜ ì‹ ì‘
ì •ë‹µì´ë¼ê³  ì£¼ì¥í•  ìˆ˜ ìˆëŠ” ë…ë²•ì€ ì—†ìœ¼ë‚˜, â€˜ì´ ì‚¬ëŒì˜ ê²ƒâ€™ì´ë¼ë©´ ë¯¿ì„ ë§Œí•˜ë‹¤ê³  ì—¬ê²¨ì§€ëŠ” ë…ë²•ì€ ìˆë‹¤. ë°”ë¡œ, ë² ìŠ¤íŠ¸ì…€ëŸ¬ ã€Šì±…ì€ ë„ë¼ë‹¤ã€‹ì˜ ì €ì ë°•ì›…í˜„ì˜ ë…ë²•ì´ ê·¸ëŸ¬í•˜ë‹¤. ê·¸ëŸ° ê·¸ê°€ ã€Šì±…ì€ ë„ë¼ë‹¤ã€‹ ì´í›„ 5ë…„ ë§Œì— ìì‹ ì˜ ì´ë¦„ì„ ë‚´ê±¸ì€ ì¸ë¬¸í•™ ê°•ë…íšŒë¡œ ëŒì•„ì™”ë‹¤. ëª¨ë‘ê°€ í›„ì†ì‘ì´ ë‚˜ì˜¤ê¸°ë§Œì„ ê¸°ë‹¤ë ¤ì™”ë˜ ì±…, ê·¸ë˜ì„œ ì œëª©ë„ ã€ë‹¤ì‹œ, ì±…ì€ ë„ë¼ë‹¤ã€ì´ë‹¤.', 1005, 349, 14400, 2, 0);

COMMIT;
-----------------------------------------------------------------------------------------------------------------
-- book í…Œì´ë¸”ì˜ ê¸°ë³¸ ì¿¼ë¦¬ë“¤ ì‘ì„±
-- 1. 1ê±´ ì¡°íšŒ
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

-- 2. ì „ì²´ ì¡°íšŒ
-- (1) ì¶œíŒì‚¬ ì½”ë“œë¡œ ì¡°íšŒ
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
-- (2) ì¼ì • ê°€ê²© ì´ìƒì¸ ë„ì„œ ì¡°íšŒ
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
-- (3) ê°€ê²© ë²”ìœ„ ë„ì„œ ì¡°íšŒ
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
-- (4) ì¼ì • ê°€ê²© ì´í•˜ì¸ ë„ì„œ ì¡°íšŒ
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
-- (5) ì œëª©, ì €ì, ì¶œíŒì‚¬ ì¡°ê±´ ì¢…í•© ì¡°íšŒ
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
 WHERE b.title LIKE '%ë‹¤%'
    OR b.author LIKE '%ë‹¤%'
	OR b.content LIKE '%ë‹¤%'
	OR b.company_nm LIKE '%ë‹¤%'
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

-- 3. 1ê±´ ì…ë ¥
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'ì±„ì‹ì£¼ì˜ì', 'í•œê°•', 'ë§¨ë¶€ì»¤ ìƒì„ ë°›ì€ í•œê°•ì˜ ì†Œì„¤', 1001, 247, 10800, 5, 0);

-- 4. 1ê±´ ìˆ˜ì •
UPDATE BOOK b
   SET b.isbn = ''
     , b.title = 'ì±„ì‹ì£¼ì˜ì*ìˆ˜ì •'
	 , b.author = ''
	 , b.content = ''
	 , b.company_cd = ''
	 , b.company_nm = ''
	 , b.totalpage = ''
	 , b.price = ''
	 , b.quantity = ''
	 , mod_id = ''
	 , mod_date = sysdate
 WHERE b.BOOK_SEQ = 1
;
ROLLBACK;

-- 5. 1ê±´ ì‚­ì œ
DELETE BOOK b
 WHERE b.BOOK_SEQ = 1
;
ROLLBACK;
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'ì±„ì‹ì£¼ì˜ì', 'í•œê°•', 'ë§¨ë¶€ì»¤ ìƒì„ ë°›ì€ í•œê°•ì˜ ì†Œì„¤', 1001, 247, 10800, 5, 0);
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
VALUES (SEQ_MANAGER.NEXTVAL, 'root', 'ìˆ˜í¼ê´€ë¦¬ì', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', 'ê´€ë¦¬ì', 'admin', 0);

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
);

/* -----------------------------------------------------
	ì¶œíŒì‚¬ ë²ˆí˜¸ì™€ ì¶œíŒì‚¬ ì´ë¦„ì„ ì½”ë“œë¡œ ê´€ë¦¬
	ì¶œíŒì‚¬ ê´€ë ¨ ì½”ë“œëŠ” 1000ë²ˆëŒ€ê°€ ì¶œíŒì‚¬ ì½”ë“œ
	ìì„¸í•œ ê°œë³„ ì¶œíŒì‚¬ì˜ ì •ë³´ëŠ” 1001, 1002, 1003, ... ìˆœã……ë¡œ ì¦ê°€í•˜ë„ë¡ ì‹¤ì œ ë°ì´í„°ë¥¼ ë„£ê³  ì‹œì‘	
*/
-- CODE ì¶œíŒì‚¬ INSERT INTO êµ¬ë¬¸ ì‘ì„±
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', 'ì¶œíŒì‚¬' 'Y', 'ì¶œíŒì‚¬ ì½”ë“œ', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', 'ì°½ë¹„' 'Y', 'ì°½ì‘ê³¼ ë¹„í‰ì‚¬', 0, 1);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', 'ë”ìŠ¤í† ë¦¬' 'Y', 'ë” ìŠ¤í† ë¦¬', 0, 2);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', 'ìœ„ì¦ˆë¤' 'Y', 'ìœ„ì¦ˆë¤ í•˜ìš°ìŠ¤', 0, 3);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', 'í”' 'Y', 'ë…ë¦½ì¶œíŒ í”', 0, 4);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', 'ë¶í•˜ìš°ìŠ¤' 'Y', 'ë¶í•˜ìš°ìŠ¤', 0, 5);
COMMIT;

-- ì‹œí€€ìŠ¤ ëª… : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1ì”© ì¦ê°€
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
	ì¶œíŒì‚¬ ëª…ì´ ê°™ì´ ë³´ì´ëŠ” ë·°ë¥¼ ì‘ì„±
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

=======
-- Book sample project table

/* Å×ÀÌºí : BOOK                                | Å×ÀÌºí¸í : MANAGER
   ---------------------------------------------|------------------------------------------
   ÄÃ·³¸í,      µ¥ÀÌÅÍ Å¸ÀÔ(Å©±â),  Á¦¾àÁ¶°Ç    |ÄÃ·³¸í,        µ¥ÀÌÅÍ Å¸ÀÔ(Å©±â), Á¦¾àÁ¶°Ç
   ---------------------------------------------|-------------------------------------------
   BOOK_SEQ     NUMBER              PK          |MANAGER_SEQ    NUMBER              PK
   ISBN         VARCHAR2(13)        U           |MANAGER_ID     VARCHAR2(10)        U   
   TITLE        VARCHAR2(50)        NOT NULL    |NAME           VARCHAR2(30)
   AUTHOR       VARCHAR2(30)                    |PASSWORD       VARCHAR2(10)        NOT NULL
   CONTENT      VARCHAR2(3000)                  |REG_ID         VARCHAR2(10)  
   COMPANY_CD   NUMBER(4)                       |REG_DATE       DATE                SYSDATE
   TOTAL_PAGE   NUMBER(4)                       |MOD_ID         VARCHAR2(10) 
   PRICE        NUMBER(6)                       |MOD_DATE       DATE   
   QUANTITY     NUMBER(4)                       |
   REG_ID       VARCHAR2(10)                    |
   REG_DATE     DATE                SYSDATE     |
   MOD_ID       VARCHAR2(10)                    |
   MOD_DATE     DATE                            |
   ==============================================================================================
   */
DROP TABLE BOOK;
CREATE TABLE BOOK
( BOOK_SEQ     NUMBER              
, ISBN         VARCHAR2(13)        
, TITLE        VARCHAR2(50)        NOT NULL    
, AUTHOR       VARCHAR2(30)                    
, CONTENT      VARCHAR2(3000)                  
, COMPANY_CD   NUMBER(4)                       
, TOTAL_PAGE   NUMBER(4)                       
, PRICE        NUMBER(6)                       
, QUANTITY     NUMBER(4)                       
, REG_ID       VARCHAR2(10)                    
, REG_DATE     DATE                DEFAULT SYSDATE     
, MOD_ID       VARCHAR2(10)                    
, MOD_DATE     DATE
, CONSTRAINT PK_BOOK         PRIMARY KEY (BOOK_SEQ)
, CONSTRAINT U_BOOK_ISBN    UNIQUE (ISBN)
);
DROP TABLE BOOK;
CREATE TABLE BOOK
( BOOK_SEQ		NUMBER
, ISBN			VARCHAR2(13)
, TITLE			VARCHAR2(50)	NOT NULL
, AUTHOR		VARCHAR2(30)
, CONTENT		VARCHAR2(3000)
, COMPANY_CD 	NUMBER
, TOTAL_PAGE    NUMBER
, PRICE			NUMBER
, QUANTITY      NUMBER
, REG_ID		VARCHAR2(10)
, REG_DATE		DATE			DEFAULT SYSDATE
, MOD_ID		VARCHAR2(10)
, MOD_DATE		DATE
, CONSTRAINT PK_BOOK PRIMARY KEY(BOOK_SEQ)
, CONSTRAINT U_BOOK_ISBN UNIQUE(ISBN)
);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'Ã¤½ÄÁÖÀÇÀÚ', 'ÇÑ°­'
       , '¸ÇºÎÄ¿ »óÀ» ¹ŞÀº ÇÑ°­ÀÇ ¼Ò¼³', 1001, 247, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936471019', 'Á¤¼± ¸ñ¹Î½É¼­', 'Á¤¾à¿ë'
       , '´Ù»ê¿¬±¸È¸°¡ 1985³â¿¡ Àü 6±ÇÀ¸·Î ¿Ï°£ÇÑ <¿ªÁÖ ¸ñ¹Î½É¼­>¸¦ °¢°è°¢Ãş ³²³à³ë¼Ò ¸ğµÎ°¡ ÀĞÀ» ¼ö ÀÖ´Â ´ëÁßÀûÀÎ ±³¾ç¼­·Î °³ÆíÇÑ Ã¥ÀÌ´Ù. Áß¿äÇÑ ³»¿ë¸¸À» ¼±º°ÇÏ¿© ÇÑ ±ÇÀ¸·Î ´ëÆø ÁÙÀÌ°í, ÀĞ±â ½±°Ô ¹®ÀåÀ» ´Ùµë¾ú´Ù. 1ºÎ 6Á¶, µµÇÕ 12ºÎ 72Á¶·Î ±¸¼ºµÈ Ã¼Á¦ÀÇ ¿øÇüÀº ±×´ë·Î À¯ÁöÇÏ°í ÀÖ´Ù.
<¸ñ¹Î½É¼­>´Â ´Ù»ê Á¤¾à¿ëÀÌ °­ÁøÀÇ ±Öµ¿ À¯¹èÁö¿¡ ¾´ ´ëÇ¥ÀûÀÎ Àú¼úÀÌ´Ù. ¿äÁò °³³äÀ¸·Î´Â Áö¹æÇàÁ¤ÀÇ ÁöÄ§¼­·Î, ¹Î»ıÀ» Áß½É¿¡ µĞ »ç°íÀÇ ¹æÇâ¿¡¼­ Á¤Ä¡Á¦µµÀÇ °³Çõ°ú Áö¹æÇàÁ¤ÀÇ °³¼±À» µµ¸ğÇÏ¿´´Ù. Ç³ºÎÇÑ »ç½Ç°ú ³í¸®¸¦ ¹ÙÅÁÀ¸·Î ´ç½ÃÀÇ ½Ç»ó°ú °üÇàÀ» ÆÄ°íµé¸ç, ±¸Ã¼ÀûÀÌ°í ºĞ¼®ÀûÀ¸·Î º´ÆóÀÇ ¿øÀÎÀ» Ã£°í Ä¡À¯Ã¥À» °í¾ÈÇÏ°í ÀÖ´Ù.', 1001, 343, 13500, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936452247', 'Áö±İ µ¶¸³ÇÏ´Â ÁßÀÔ´Ï´Ù', 'ÇÏÁöÇö'
       , '½Ê ´ë¸¦ À§ÇÑ ¸¶À½ Ã³¹æÀü
Á¤½Å°ú ÀÇ»çÀÌÀÚ, ´Ù¾çÇÑ ½É¸® °ü·Ã Àú¼­¸¦ ÅëÇØ Çö´ëÀÎµéÀÇ Á¤½Å °Ç°­ ÁÖÄ¡ÀÇ·Îµµ È°¾àÇÏ°í ÀÖ´Â ÇÏÁöÇöÀÌ ´ëÇÑ¹Î±¹ Ã»¼Ò³âÀÇ ¸¶À½À» ¼³¸íÇÏ°í Á¶¾ğÇÏ´Â Ã¥À» ³Â´Ù.¡ºÁö±İ µ¶¸³ÇÏ´Â ÁßÀÔ´Ï´Ù¡»´Â ½Ê ´ë¿¡ ³ªÅ¸³ª´Â ½ÅÃ¼Àû Á¤½ÅÀû º¯È­ºÎÅÍ °øºÎ ½ºÆ®·¹½º, Ä£±¸ ¹®Á¦, Áø·Î ºÒ¾È±îÁö Áö±İ Ã»¼Ò³âÀÌ¶ó¸é ´©±¸³ª °®°í ÀÖ´Â ´ëÇ¥ÀûÀÎ ¸¶À½¼Ó °¥µî°ú °í¹ÎµéÀ» ´ã¾Ò´Ù. 20¿© ³â°£ ¼ö¸¹Àº ºÎ¸ğ¿Í Ã»¼Ò³âÀ» »ó´ãÇÏ¸é¼­ ½×Àº °æÇè°ú ³ëÇÏ¿ì°¡ Áı¾àµÇ¾î ÀÖ´Ù.

ÀúÀÚ´Â ½Ê ´ë ½ÃÀı¿¡ Ã£¾Æ¿À´Â ´Ù¾çÇÑ ¸¶À½ÀÇ º¯È­¿Í ÆÄÀåµéÀ» Á¾ÇÕÀûÀ¸·Î ¼³¸íÇÑ´Ù. ¿ì¼± 1ºÎ¿¡¼­´Â 2Â÷ ¼ºÂ¡ ÀÌÈÄ ³ªÅ¸³ª´Â ½ÅÃ¼Àû º¯È­¿Í ³úÀÇ ¹ß´ŞÀ» ÀÌ¾ß±âÇÑ´Ù. ³» ¸ö¿¡ ¾î¶² º¯È­°¡ ÀÏ¾î³ª°í, ±×°ÍÀÌ ¾î¶² È¥¶õÀ» °¡Á®¿À´ÂÁö ¹àÈù´Ù. 2ºÎ¿¡¼­´Â ¸¶À½¿¡ ´õ¿í ÁıÁßÇÑ´Ù. ½Ê ´ë°¡ µÇ¸é ¿Ö ¸¶À½ÀÌ °øÇãÇØÁö´ÂÁö, ÀÚÁ¸°¨Àº ¾î¶»°Ô ½×ÀÌ´ÂÁö Â÷±ÙÂ÷±Ù ¼³¸íÇÑ´Ù. 3ºÎ¿¡¼­´Â Ã»¼Ò³âµéÀÌ ´À³¢´Â °øºÎ ½ºÆ®·¹½º¸¦ ¼³¸íÇÏ¸é¼­, ½ºÆ®·¹½º¸¦ °¡Áß½ÃÅ°´Â Àß¸øµÈ °øºÎ¹ı¿¡ ´ëÇØ¼­µµ ÁöÀûÇÑ´Ù. 4ºÎ¿Í 5ºÎ¿¡¼­´Â ÀÎ°£°ü°èÀÇ ¾ç»óÀÌ ´Ş¶óÁö°í º¹ÀâÇØÁö´Â °ÍÀÌ ÀÚ¿¬½º·¯¿î °úÁ¤ÀÌ¸ç, ±×·Î ÀÎÇØ Ã£¾Æ¿À´Â ÀÚ±â °³³äÀÇ È¥¶õ ¿ª½Ã ÇÊ¿äÇÑ °úÁ¤ÀÓÀ» Ä£ÀıÇÏ°Ô ¼³¸íÇÑ´Ù. 6ºÎ¿¡´Â Áø·Î °í¹Î°ú °ü·ÃÇØ ÀüÇØ ÁÖ°í ½ÍÀº ¸»À» ÁÖ·Î ´ã¾Ò´Ù.', 1001, 212, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936486327', '¹®¸íÀÇ ´ëÀüÈ¯À» °øºÎÇÏ´Ù', '¹é³«Ã» ¿Ü , Ã¢ºñ´ã·Ğ ¾ÆÄ«µ¥¹Ì'
       , '±Ù´ëÀûÀÀ°ú ±Ù´ë±Øº¹ÀÇ ÁöÆò ¼Ó¿¡¼­ »õ·Î¿î °¡´É¼ºÀ» Å½±¸ÇÑ´Ù!
¼­·Î ¹è¿ì°í °¡¸£Ä¡¸ç ±úÄ£ ¹®¸íÀüÈ¯ÀÇ ÁöÇı
', 1001, 344, 13500, 5, 0);

       
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159039690', '¾î¸°¿ÕÀÚ(ÃÊÆÇº»)', '»ıÅØÁãÆä¸®', '¼¼»ó¿¡¼­ °¡Àå ¼ø¼öÇÑ ¿µÈ¥,
¡®¾î¸° ¿ÕÀÚ¡¯ ÀÌ¾ß±â
¿À¸®Áö³Î ÃÊÆÇº» Ç¥ÁöµğÀÚÀÎ!
¼¼»ó¿¡¼­ °¡Àå ¼ø¼öÇÑ ¿µÈ¥, ¡¶¾î¸° ¿ÕÀÚ¡· ¿À¸®Áö³Î ÃÊÆÇº» Ç¥ÁöµğÀÚÀÎ!
»ıÅØÁãÆä¸®´Â ÇÁ¶û½ºÀÇ À¯¸íÇÑ ¼Ò¼³°¡·Î, ±×ÀÇ ÀÛÇ° ¡¶¾î¸° ¿ÕÀÚ¡·´Â Àü ¼¼°èÀûÀ¸·Î ¡¶¼º°æ¡·, ¡¶ÀÚº»·Ğ¡· ´ÙÀ½À¸·Î ¸¹ÀÌ ÀĞÈ÷´Â Ã¥ÀÌ´Ù. 250¿© °³ ¾ğ¾î·Î ¹ø¿ªµÇ¾ú°í 1¾ï ºÎ ÀÌ»óÀÌ ÆÈ·È´Ù.
±×·±µ¥ ¾ÆÀÌ·¯´ÏÇÏ°Ôµµ ¡¶¾î¸° ¿ÕÀÚ¡·´Â ÇÁ¶û½º°¡ ¾Æ´Ï¶ó ¹Ì±¹ ´º¿å¿¡¼­ Ã³À½ ÃâÆÇµÇ¾ú´Ù. ´ç½Ã »ıÅØÁãÆä¸®´Â Á¦2Â÷ ¼¼°è´ëÀüÀ¸·Î ¹Ì±¹¿¡¼­ ¸Á¸í ÁßÀÌ¾ú°í, ¡¶¾î¸° ¿ÕÀÚ¡·´Â 1943³â 4¿ù 6ÀÏ¿¡ ¿µ¾îÆÇ°ú ÇÁ¶û½º¾îÆÇÀ¸·Î ´º¿å¿¡¼­ µ¿½Ã Ãâ°£µÇ¾ú´Ù.
µµ¼­ÃâÆÇ ´õ½ºÅä¸®¿¡¼­ Ãâ°£ÇÑ ÃÊÆÇº» ¡¶¾î¸° ¿ÕÀÚ¡·´Â 1943³â ´º¿å¿¡¼­ ÃâÆÇµÈ ÇÁ¶û½º¾îÆÇ ÃÊÆÇº» Ç¥ÁöµğÀÚÀÎÀ» ±×´ë·Î µÇ»ì·È´Ù. ¾îµÓÁöµµ ³Ê¹« ºû¹Ù·¡Áöµµ ¾ÊÀº ³ë¶õ»ö Ç¥Áö¿Í ¾î¸° ¿ÕÀÚÀÇ ¿¬µÔºû ¿ÊÀÇ »ö°¨ÀÌ Àß »ì¾Æ ÀÖÀ¸¸ç, º»¹®¿¡´Â »ıÅØÁãÆä¸®ÀÇ Ä£ÇÊ »çÀÎÀÌ µé¾î ÀÖ´Ù.
¶ÇÇÑ ÀÛ°¡°¡ Á÷Á¢ ±×¸° ÀÏ·¯½ºÆ®µéÀÌ ½ÃÀûÀÌ°í ¾Æ¸§´Ù¿î ¾î¸° ¿ÕÀÚÀÇ ÀÌ¾ß±â¸¦ ´õ¿í Ç³¼ºÇÏ°Ô ¸¸µé¾îÁØ´Ù.

¡°¾î¸¥µéÀº ¸ğµÎ Ã³À½¿¡´Â ¾î¸°ÀÌ¿´´Ù. ±×·¯³ª ´ëºÎºĞ ¾î¸° ½ÃÀıÀ» ±â¾ïÇÏÁö ¸øÇÑ´Ù.¡±
¡°»ç¸·ÀÌ ¾Æ¸§´Ù¿î ÀÌÀ¯´Â ¾îµò°¡¿¡ ¿À¾Æ½Ã½º¸¦ ¼û±â°í ÀÖ±â ¶§¹®ÀÏ °Å¿¹¿ä.¡±
', 1002, 150, 8820, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', 'Á¦ ÀÎ»ı¿¡ ´äÀÌ ¾ø¾î¿ä', '¼±¹Ù', 'À¯Æ©¹ö ¼±¹Ù°¡ ÆîÄ¡´Â Á¶±İ ÀÌ»óÇØµµ Àº±ÙÈ÷ ¼³µæ·Â ÀÖ´Â ÀÎ»ı ÇØ¹ı!
50¸¸ ±¸µ¶ÀÚÀÇ ¿ôÀ½À» Ã¥ÀÓÁö´Â À¯Æ©¹ö ¼±¹ÙÀÇ ¸¸´ã ¿¡¼¼ÀÌ ¡ºÁ¦ ÀÎ»ı¿¡ ´äÀÌ ¾ø¾î¿ä¡». ´ëÇĞÀ» 10³âÂ° ´Ù´Ï°í ÀÖ´Â ÇĞ»ıÀÌÀÚ °ÔÀÓ ½ºÆ®¸®¹Ö Àü¹® À¯Æ©¹ö ¼±¹Ù°¡ ¹æ¼ÛÀ¸·Î´Â ¸ø´Ù ÇÑ µå¸³°ú »ı°¢À» ¿«Àº Ã¥À¸·Î, ¾à°£ ¸ÁÇß¾îµµ Áñ°Ì°Ô ³» °¥ ±æÀ» °¡´Â Èû¿¡ ´ëÇØ ÀÌ¾ß±âÇÑ´Ù. 1ÀÎ Å©¸®¿¡ÀÌÅÍ·Î »ç´Â ¹ı, ÀÎÅÍ³İ ¹æ¼Û°ú À¯¸Ó¿¡ ´ëÇÑ ±×¸¸ÀÇ Áö·ĞÀº ¹°·Ğ, ÀÎ»ıÀÌ Àû¼ºÀÌ ¾Æ´Ñ »ç¶÷µéÀ» À§ÇÑ »îÀÇ TMI¿Í ²ÜÆÁÀ» Ç®¾î³õ´Â´Ù.'
      , 1003, 192, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', 'Á×°í ½ÍÁö¸¸ ¶±ººÀÌ´Â ¸Ô°í ½Í¾î', '¹é¼¼Èñ', 'ÀÇ½É ¾øÀÌ Æí¾ÈÇÏ°Ô »ç¶ûÇÏ°í »ç¶û¹Ş°í ½ÍÀº ÇÑ »ç¶÷ÀÇ ÀÌ¾ß±â
10³â ³Ñ°Ô ±âºĞºÎÀüÀå¾Ö(°¡º­¿î ¿ì¿ï Áõ»óÀÌ Áö¼ÓµÇ´Â »óÅÂ)¿Í ºÒ¾ÈÀå¾Ö¸¦ °ŞÀ¸¸ç Á¤½Å°ú¸¦ ÀüÀüÇß´ø ÀúÀÚ¿Í Á¤½Å°ú Àü¹®ÀÇ¿ÍÀÇ 12ÁÖ°£ÀÇ ´ëÈ­¸¦ ¿«Àº ¡ºÁ×°í ½ÍÁö¸¸ ¶±ººÀÌ´Â ¸Ô°í ½Í¾î¡». Áöµ¶È÷ ¿ì¿ïÇÏÁöµµ Çàº¹ÇÏÁöµµ ¾ÊÀº ¾Ö¸ÅÇÑ ±âºĞ¿¡ ½Ã´Ş·È°í, ÀÌ·¯ÇÑ °¨Á¤µéÀÌ ÇÑ ¹ø¿¡ ÀÏ¾î³¯ ¼ö ÀÖ´Ù´Â »ç½ÇÀ» ¾ËÁö ¸øÇØ¼­ ±«·Î¿ü´ø ÀúÀÚ´Â 2017³â Àß ¸Â´Â º´¿øÀ» Ã£¾Æ ¾à¹°Ä¡·á¿Í »ó´ãÄ¡·á¸¦ º´ÇàÇÏ°í ÀÖ´Ù.'
       , 1004, 208, 12000, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394578', 'Á×°í ½ÍÁö¸¸ ¶±ººÀÌ´Â ¸Ô°í ½Í¾î 2', '¹é¼¼Èñ', '¿ì¿ï¿¡ µµÃëµÇ±âº¸´Ù ³ª¸¦ ±àÁ¤ÇÏ±â¿¡ °ñ¸ôÇÏ·Á°í ¾Ö¾²´Â ÇÑ »ç¶÷ÀÇ ÀÌ¾ß±â
10³â ³Ñ°Ô ±âºĞºÎÀüÀå¾Ö(°¡º­¿î ¿ì¿ï Áõ»óÀÌ Áö¼ÓµÇ´Â »óÅÂ)¿Í ºÒ¾ÈÀå¾Ö¸¦ °ŞÀ¸¸ç Á¤½Å°ú Àü¹®ÀÇ¿Í ³ª´³´ø 12ÁÖ°£ÀÇ ´ëÈ­¸¦ ÀØÁö ¾Ê±â À§ÇØ ³ìÃë¸¦ Ç®¾î ¾´ °Í¿¡¼­ ½ÃÀÛµÈ ¡¶Á×°í ½ÍÁö¸¸ ¶±ººÀÌ´Â ¸Ô°í ½Í¾î¡··Î 2018³â ÇÑ ÇØ Å« »ç¶ûÀ» ¹Ş¾Ò´ø ¹é¼¼Èñ ÀÛ°¡°¡ 1±Ç¿¡ ¸¶Àú ´ãÁö ¸øÇß´ø ³»¿ëÀ» Æ÷ÇÔÇØ ±× ÀÌÈÄ¿¡ ÀÌ¾îÁø 16ÁÖ°£ÀÇ »ó´ã±â·ÏÀ» ¿«Àº ¡ºÁ×°í ½ÍÁö¸¸ ¶±ººÀÌ´Â ¸Ô°í ½Í¾î¡» Á¦2±Ç.

»çÀûÀÎ ÀÌ¾ß±â°¡ °¡µæÇÏÁö¸¸ ¾îµÎ¿î °¨Á¤¸¸ Ç®¾î³»±âº¸´Ù´Â ±¸Ã¼ÀûÀÎ »óÈ²À» ÅëÇØ ±Ùº»ÀûÀÎ ¿øÀÎÀ» Ã£°í, °Ç°­ÇÑ ¹æÇâÀ¸·Î ³ª¾Æ°¡´Â °Í¿¡ ÁßÁ¡À» µĞ ÀÌ Ã¥Àº °Ñº¸±â¿¡´Â ¸ÖÂÄÇÏÁö¸¸ ¼ÓÀº °ò¾Æ ÀÖ´Â, Áöµ¶È÷ ¿ì¿ïÇÏÁöµµ Çàº¹ÇÏÁöµµ ¾ÊÀº »ç¶÷µé, Å¸ÀÎÀÇ ½Ã¼±À¸·ÎºÎÅÍ ÀÚÀ¯·ÓÁö ¸øÇÏ°í, ºÒ¿ÏÀüÇÏ°í, ±¸Áú±¸ÁúÇÑ ¿ì¸® ¸ğµÎÀÇ ÀÌ¾ß±âÀÌ±âµµ ÇÏ´Ù. ÀúÀÚÀÇ Áø¼ÖÇÑ ÀÚ±â°í¹éÀÌ ½½ÇÄÀ» ¸ğµÎ °¡Á®°¡ÁÖÁö´Â ¸øÇÏ°ÚÁö¸¸, Àû¾îµµ ¿ïÁö ¾Ê´Â »ç¶÷ÀÌ ¾Æ´Ï¶ó ¿ï°í ½ÍÀ» ¶§ ¿ï ¼ö ÀÖ´Â »ç¶÷ÀÌ µÇµµ·Ï ´Ù½Ã ÇÑ ¹ø µµ¿ÍÁÙ °ÍÀÌ´Ù.'
       , 1004, 264, 12000, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', 'Ã¥Àº µµ³¢´Ù', '¹Ú¿õÇö', 'ÀÎ¹®ÇĞÀ¸·Î ±¤°íÇÏ´Â ¹Ú¿õÇöÀÌ µé·ÁÁÖ´Â
Ç³¿ä·Î¿î »îÀ» À§ÇÑ ±íÀÌ ÀÖ´Â Ã¥ ÀĞ±âÀÇ Á¤¼ö!
¡®³ØÅ¸ÀÌ¿Í Ã»¹ÙÁö´Â ÆòµîÇÏ´Ù¡¯, ¡®³ªÀÌ´Â ¼ıÀÚ¿¡ ºÒ°úÇÏ´Ù¡¯, ¡®»ç¶÷À» ÇâÇÕ´Ï´Ù¡¯, ¡®Áø½ÉÀÌ Áş´Â´Ù¡¯, ¡®»ı°¢ÀÌ ¿¡³ÊÁö´Ù¡¯ µî ÀÎ°£À» ÇâÇÑ µû¶æÇÑ ½Ã¼±ÀÌ ´ã±ä °¡Ä¡ ÁöÇâÀû ±¤°í¸¦ ¸¸µé¸ç ¡®ÀÎ¹®ÇĞÀ¸·Î ±¤°íÇÏ´Â¡¯ ±¤°íÀÎÀ¸·Î¼­ ÀÚ½Å¸¸ÀÇ µ¶º¸ÀûÀÎ ½ºÅ¸ÀÏÀ» ±¸ÃàÇÑ ¹Ú¿õÇö. ±×´Â ¸»ÇÑ´Ù. Ã¢ÀÇ·ÂÀÇ ÀüÀåÀÎ ±¤°í°è¿¡¼­ 30¿© ³â°£ ±¤°í¸¦ ¸¸µé ¼ö ÀÖ¾ú´ø ¹ÙÅÁ¿¡´Â ÀÎ¹®ÇĞÀÌ ÀÖ¾ú°í, ±× Áß½É¿¡´Â ¡®Ã¥¡¯ÀÌ ÀÖ¾ú´Ù°í. Ã¥À» ÅëÇØ ¾òÀº ¿¹¹ÎÇØÁø ÃË¼ö°¡ ÀÚ½ÅÀÇ »ı¾÷À» µµ¿Ô´Ù°í. ¡ºÃ¥Àº µµ³¢´Ù¡»´Â ÀÎ¹®ÇĞÀû ±íÀÌ°¡ ´À²¸Áö¸é¼­µµ »ç¶÷µéÀÇ ¸¶À½¿¡ ±íÀº ¿ï¸²À» ³²±ä ±¤°í¸¦ ¸¸µé¾î¿Â ÀúÀÚ°¡ ÀÚ½ÅÀÇ Ã¢ÀÇ¼º°ú °¨¼ºÀ» ÀÏ±ú¿ü´ø, ÀÌÁ¦´Â °íÀüÀ¸·Î ¼Õ²ÅÈ÷´Â Ã¥µéÀ» ¼Ò°³ÇÏ´Â ÀÎ¹®±³¾ç¼­ÀÌ´Ù.'
      , 1005, 348, 16000, 5, 0);
COMMIT;
-----------------------------------------------------------------------------------------------------------------
--=======================================================================
-- book Å×ÀÌºíÀÇ ±âº» Äõ¸®µé ÀÛ¼º
-- 1. 1°Ç Á¶È¸
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

-- 2. ÀüÃ¼ Á¶È¸
-- (1) ÃâÆÇ»ç ÄÚµå·Î Á¶È¸
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

-- (2) ÀÏÁ¤ °¡°İ ÀÌ»óÀÎ µµ¼­ Á¶È¸
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
-- (3) °¡°İ ¹üÀ§ µµ¼­ Á¶È¸
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
-- (4) ÀÏÁ¤ °¡°İ ÀÌÇÏÀÎ µµ¼­ Á¶È¸
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

-- (5) Á¦¸ñ, ÀúÀÚ, ÃâÆÇ»ç Á¶°Ç Á¾ÇÕ Á¶È¸
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
 WHERE b.title LIKE '%´Ù%'
    OR b.author LIKE '%´Ù%'
	OR b.content LIKE '%´Ù%'
	OR b.company_nm LIKE '%´Ù%'
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

-- 3. 1°Ç ÀÔ·Â

-- 4. 1°Ç ¼öÁ¤

-- 5. 1°Ç »èÁ¦
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
VALUES (0, 'root', '¼öÆÛ°ü¸®ÀÚ', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '°ü¸®ÀÚ', 'admin', 0);

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
);

/* ---------------------------------------------------------------------------------------------
   ÃâÆÇ»ç ¹øÈ£¿Í ÃâÆÇ»ç ÀÌ¸§À» ÄÚµå·Î °ü¸®
   ÃâÆÇ»ç °ü·Ã ÄÚµå´Â 1000 ¹ø´ë°¡ ÃâÆÇ»ç ÄÚµå
   ÀÚ¼¼ÇÑ °³º° ÃâÆÇ»çÀÇ Á¤º¸´Â 1001, 1002, 1003, ... ¼ø¼­·Î Áõ°¡ÇÏµµ·Ï ½ÇÁ¦ µ¥ÀÌÅÍ¸¦ ³Ö°í ½ÃÀÛ
*/
-- CODE ÃâÆÇ»ç INSERT INTO ±¸¹® ÀÛ¼º
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', 'ÃâÆÇ»ç', 'Y', 'ÃâÆÇ»ç ÄÚµå', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', 'Ã¢ºñ', 'Y', 'Ã¢ÀÛ°ú ºñÆò»ç', 0, 1);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '´õ½ºÅä¸®', 'Y', '´õ ½ºÅä¸®', 0, 2);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', 'À§Áî´ı', 'Y', 'À§Áî´ı ÇÏ¿ì½º', 0, 3);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', 'Èç', 'Y', 'µ¶¸³ÃâÆÇ Èç', 0, 4);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', 'ºÏÇÏ¿ì½º', 'Y', 'ºÏÇÏ¿ì½º', 0, 5);
COMMIT;

/*------------------------------------------------------------------------------------------
   ½ÃÄö½º ¸í : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1¾¿ Áõ°¡
 ------------------------------------------------------------------------------------------*/
DROP SEQUENCE SEQ_BOOK;
CREATE SEQUENCE SEQ_BOOK
NOMAXVALUE
NOCYCLE
INCREMENT BY 1
;

DROP SEQUENCE SEQ_MANAGER;
CREATE SEQUENCE SEQ_MANAGER
NOMAXVALUE
NOCYCLE
INCREMENT BY 1
;

/* -----------------------------------------
   ÃâÆÇ»ç ¸íÀÌ °°ÀÌ º¸ÀÌ´Â ºä¸¦ ÀÛ¼º
   -----------------------------------------
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
;
>>>>>>> branch 'master' of https://github.com/sywin1004/06_book.git
