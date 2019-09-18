-- Book sample project table

/* ���̺� : BOOK                                | ���̺�� : MANAGER
   ---------------------------------------------|------------------------------------------
   �÷���,      ������ Ÿ��(ũ��),  ��������    |�÷���,        ������ Ÿ��(ũ��), ��������
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
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'ä��������', '�Ѱ�'
       , '�Ǻ�Ŀ ���� ���� �Ѱ��� �Ҽ�', 1001, 247, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936471019', '���� ��νɼ�', '�����'
       , '�ٻ꿬��ȸ�� 1985�⿡ �� 6������ �ϰ��� <���� ��νɼ�>�� ���谢�� ������ ��ΰ� ���� �� �ִ� �������� ���缭�� ������ å�̴�. �߿��� ���븸�� �����Ͽ� �� ������ ���� ���̰�, �б� ���� ������ �ٵ����. 1�� 6��, ���� 12�� 72���� ������ ü���� ������ �״�� �����ϰ� �ִ�.
<��νɼ�>�� �ٻ� ������� ������ �ֵ� �������� �� ��ǥ���� �����̴�. ���� �������δ� ���������� ��ħ����, �λ��� �߽ɿ� �� ����� ���⿡�� ��ġ������ ������ ���������� ������ �����Ͽ���. ǳ���� ��ǰ� ���� �������� ����� �ǻ�� ������ �İ���, ��ü���̰� �м������� ������ ������ ã�� ġ��å�� ����ϰ� �ִ�.', 1001, 343, 13500, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936452247', '���� �����ϴ� ���Դϴ�', '������'
       , '�� �븦 ���� ���� ó����
���Ű� �ǻ�����, �پ��� �ɸ� ���� ������ ���� �����ε��� ���� �ǰ� ��ġ�Ƿε� Ȱ���ϰ� �ִ� �������� ���ѹα� û�ҳ��� ������ �����ϰ� �����ϴ� å�� �´�.������ �����ϴ� ���Դϴ١��� �� �뿡 ��Ÿ���� ��ü�� ������ ��ȭ���� ���� ��Ʈ����, ģ�� ����, ���� �Ҿȱ��� ���� û�ҳ��̶�� ������ ���� �ִ� ��ǥ���� ������ ����� ��ε��� ��Ҵ�. 20�� �Ⱓ ������ �θ�� û�ҳ��� ����ϸ鼭 ���� ����� ���Ͽ찡 ����Ǿ� �ִ�.

���ڴ� �� �� ������ ã�ƿ��� �پ��� ������ ��ȭ�� ������� ���������� �����Ѵ�. �켱 1�ο����� 2�� ��¡ ���� ��Ÿ���� ��ü�� ��ȭ�� ���� �ߴ��� �̾߱��Ѵ�. �� ���� � ��ȭ�� �Ͼ��, �װ��� � ȥ���� ���������� ������. 2�ο����� ������ ���� �����Ѵ�. �� �밡 �Ǹ� �� ������ ������������, �������� ��� ���̴��� �������� �����Ѵ�. 3�ο����� û�ҳ���� ������ ���� ��Ʈ������ �����ϸ鼭, ��Ʈ������ ���߽�Ű�� �߸��� ���ι��� ���ؼ��� �����Ѵ�. 4�ο� 5�ο����� �ΰ������� ����� �޶����� ���������� ���� �ڿ������� �����̸�, �׷� ���� ã�ƿ��� �ڱ� ������ ȥ�� ���� �ʿ��� �������� ģ���ϰ� �����Ѵ�. 6�ο��� ���� ��ΰ� ������ ���� �ְ� ���� ���� �ַ� ��Ҵ�.', 1001, 212, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936486327', '������ ����ȯ�� �����ϴ�', '�鳫û �� , â���� ��ī����'
       , '�ٴ������� �ٴ�غ��� ���� �ӿ��� ���ο� ���ɼ��� Ž���Ѵ�!
���� ���� ����ġ�� ��ģ ������ȯ�� ����
', 1001, 344, 13500, 5, 0);

       
INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159039690', '�����(���Ǻ�)', '�������丮', '���󿡼� ���� ������ ��ȥ,
��� ���ڡ� �̾߱�
�������� ���Ǻ� ǥ��������!
���󿡼� ���� ������ ��ȥ, ��� ���ڡ� �������� ���Ǻ� ǥ��������!
�������丮�� �������� ������ �Ҽ�����, ���� ��ǰ ��� ���ڡ��� �� ���������� �����桷, ���ں��С� �������� ���� ������ å�̴�. 250�� �� ���� �����Ǿ��� 1�� �� �̻��� �ȷȴ�.
�׷��� ���̷����ϰԵ� ��� ���ڡ��� �������� �ƴ϶� �̱� ���忡�� ó�� ���ǵǾ���. ��� �������丮�� ��2�� ����������� �̱����� ���� ���̾���, ��� ���ڡ��� 1943�� 4�� 6�Ͽ� �����ǰ� �������������� ���忡�� ���� �Ⱓ�Ǿ���.
�������� �����丮���� �Ⱓ�� ���Ǻ� ��� ���ڡ��� 1943�� ���忡�� ���ǵ� ���������� ���Ǻ� ǥ���������� �״�� �ǻ�ȴ�. ������� �ʹ� ���ٷ����� ���� ����� ǥ���� � ������ ���Ժ� ���� ������ �� ��� ������, �������� �������丮�� ģ�� ������ ��� �ִ�.
���� �۰��� ���� �׸� �Ϸ���Ʈ���� �����̰� �Ƹ��ٿ� � ������ �̾߱⸦ ���� ǳ���ϰ� ������ش�.

������� ��� ó������ ��̿���. �׷��� ��κ� � ������ ������� ���Ѵ�.��
���縷�� �Ƹ��ٿ� ������ ��򰡿� ���ƽý��� ����� �ֱ� ������ �ſ���.��
', 1002, 150, 8820, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', '�� �λ��� ���� �����', '����', '��Ʃ�� ���ٰ� ��ġ�� ���� �̻��ص� ������ ����� �ִ� �λ� �ع�!
50�� �������� ������ å������ ��Ʃ�� ������ ���� ������ ���� �λ��� ���� ����䡻. ������ 10��° �ٴϰ� �ִ� �л����� ���� ��Ʈ���� ���� ��Ʃ�� ���ٰ� ������δ� ���� �� �帳�� ������ ���� å����, �ణ ���߾ ��̰� �� �� ���� ���� ���� ���� �̾߱��Ѵ�. 1�� ũ�������ͷ� ��� ��, ���ͳ� ��۰� ���ӿ� ���� �׸��� ������ ����, �λ��� ������ �ƴ� ������� ���� ���� TMI�� ������ Ǯ����´�.'
      , 1003, 192, 10800, 5, 0);

INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', '�װ� ������ �����̴� �԰� �;�', '�鼼��', '�ǽ� ���� ����ϰ� ����ϰ� ����ް� ���� �� ����� �̾߱�
10�� �Ѱ� ��к������(������ ��� ������ ���ӵǴ� ����)�� �Ҿ���ָ� ������ ���Ű��� �����ߴ� ���ڿ� ���Ű� �����ǿ��� 12�ְ��� ��ȭ�� ���� ���װ� ������ �����̴� �԰� �;. ������ ��������� �ູ������ ���� �ָ��� ��п� �ô޷Ȱ�, �̷��� �������� �� ���� �Ͼ �� �ִٴ� ����� ���� ���ؼ� ���ο��� ���ڴ� 2017�� �� �´� ������ ã�� �๰ġ��� ���ġ�Ḧ �����ϰ� �ִ�.'
       , 1004, 208, 12000, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394578', '�װ� ������ �����̴� �԰� �;� 2', '�鼼��', '��￡ ����Ǳ⺸�� ���� �����ϱ⿡ ����Ϸ��� �־��� �� ����� �̾߱�
10�� �Ѱ� ��к������(������ ��� ������ ���ӵǴ� ����)�� �Ҿ���ָ� ������ ���Ű� �����ǿ� ������ 12�ְ��� ��ȭ�� ���� �ʱ� ���� ���븦 Ǯ�� �� �Ϳ��� ���۵� ���װ� ������ �����̴� �԰� �;�� 2018�� �� �� ū ����� �޾Ҵ� �鼼�� �۰��� 1�ǿ� ���� ���� ���ߴ� ������ ������ �� ���Ŀ� �̾��� 16�ְ��� ������� ���� ���װ� ������ �����̴� �԰� �; ��2��.

������ �̾߱Ⱑ ���������� ��ο� ������ Ǯ��⺸�ٴ� ��ü���� ��Ȳ�� ���� �ٺ����� ������ ã��, �ǰ��� �������� ���ư��� �Ϳ� ������ �� �� å�� �Ѻ��⿡�� ���������� ���� ��� �ִ�, ������ ��������� �ູ������ ���� �����, Ÿ���� �ü����κ��� �������� ���ϰ�, �ҿ����ϰ�, ���������� �츮 ����� �̾߱��̱⵵ �ϴ�. ������ ������ �ڱ����� ������ ��� ������������ ���ϰ�����, ��� ���� �ʴ� ����� �ƴ϶� ��� ���� �� �� �� �ִ� ����� �ǵ��� �ٽ� �� �� ������ ���̴�.'
       , 1004, 264, 12000, 5, 0);


INSERT INTO BOOK 
(BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', 'å�� ������', '�ڿ���', '�ι������� �����ϴ� �ڿ����� ����ִ�
ǳ��ο� ���� ���� ���� �ִ� å �б��� ����!
����Ÿ�̿� û������ ����ϴ١�, �����̴� ���ڿ� �Ұ��ϴ١�, ������� ���մϴ١�, �������� ���´١�, �������� �������١� �� �ΰ��� ���� ������ �ü��� ��� ��ġ ������ ���� ����� ���ι������� �����ϴ¡� ���������μ� �ڽŸ��� �������� ��Ÿ���� ������ �ڿ���. �״� ���Ѵ�. â�Ƿ��� ������ ����迡�� 30�� �Ⱓ ���� ���� �� �־��� �������� �ι����� �־���, �� �߽ɿ��� ��å���� �־��ٰ�. å�� ���� ���� �������� �˼��� �ڽ��� ������ ���Դٰ�. ��å�� �����١��� �ι����� ���̰� �������鼭�� ������� ������ ���� �︲�� ���� ���� ������ ���ڰ� �ڽ��� â�Ǽ��� ������ �ϱ�����, ������ �������� �ղ����� å���� �Ұ��ϴ� �ι����缭�̴�.'
      , 1005, 348, 16000, 5, 0);
COMMIT;
-----------------------------------------------------------------------------------------------------------------
--=======================================================================
-- book ���̺��� �⺻ ������ �ۼ�
-- 1. 1�� ��ȸ
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

-- 2. ��ü ��ȸ
-- (1) ���ǻ� �ڵ�� ��ȸ
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

-- (2) ���� ���� �̻��� ���� ��ȸ
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
-- (3) ���� ���� ���� ��ȸ
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
-- (4) ���� ���� ������ ���� ��ȸ
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

-- (5) ����, ����, ���ǻ� ���� ���� ��ȸ
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
 WHERE b.title LIKE '%��%'
    OR b.author LIKE '%��%'
	OR b.content LIKE '%��%'
	OR b.company_nm LIKE '%��%'
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

-- 3. 1�� �Է�

-- 4. 1�� ����

-- 5. 1�� ����
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
VALUES (0, 'root', '���۰�����', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '������', 'admin', 0);

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
   ���ǻ� ��ȣ�� ���ǻ� �̸��� �ڵ�� ����
   ���ǻ� ���� �ڵ�� 1000 ���밡 ���ǻ� �ڵ�
   �ڼ��� ���� ���ǻ��� ������ 1001, 1002, 1003, ... ������ �����ϵ��� ���� �����͸� �ְ� ����
*/
-- CODE ���ǻ� INSERT INTO ���� �ۼ�
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '���ǻ�', 'Y', '���ǻ� �ڵ�', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', 'â��', 'Y', 'â�۰� �����', 0, 1);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '�����丮', 'Y', '�� ���丮', 0, 2);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '�����', 'Y', '����� �Ͽ콺', 0, 3);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', '��', 'Y', '�������� ��', 0, 4);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '���Ͽ콺', 'Y', '���Ͽ콺', 0, 5);
COMMIT;

/*------------------------------------------------------------------------------------------
   ������ �� : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1�� ����
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
   ���ǻ� ���� ���� ���̴� �並 �ۼ�
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