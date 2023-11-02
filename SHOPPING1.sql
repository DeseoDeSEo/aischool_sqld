
SELECT MEMBER_NAME
     , GENDER   
     , AGE
     FROM TB_MEMBER;
    
SELECT GRADE_CD, GRADE_NAME 
    FROM TB_GRADE;
    
SELECT PRD_ID, PRD_NAME, PRD_INFO
    FROM TB_PRD;
    
SELECT * 
    FROM TB_PRD;
    
SELECT *
    FROM TB_MEMBER;
SELECT *
    FROM TB_PRD;

SELECT DISTINCT PRD_TYPE
    FROM TB_PRD;

SELECT DISTINCT GENDER
    FROM TB_MEMBER;
SELECT DISTINCT GRADE_CD
    FROM TB_MEMBER;

SELECT MEMBER_ID AS M_ID
     , MEMBER_NAME AS M_NAME
     , PAY_CARD_NO AS P_CARD
     FROM TB_MEMBER;
     
SELECT *
     FROM TB_MEMBER
     WHERE MEMBER_ID = 'HHHHH';

INSERT INTO TB_MEMBER (
    MEMBER_ID
    , MEMBER_NAME
    , PASSWD
    , PAY_CARD_NO
    , JOIN_DY
    , GRADE_CD
    , AGE
    , DEL_YN
) VALUES (
    'JJJJJ'
    ,'���ο���'
    ,'JJJJJ'
    ,'AAAA AAAA AAAA AAAA'
    ,'20230519'
    , 1
    , 30
    , 'N'
) ;
CREATE TABLE �ڷ����׽�Ʈ ( --�ڷ����׽�Ʈ ��� �̸��� ���̺��� ����ϴ� .
    �����÷� VARCHAR2(10) , --�����÷� �̶�� �÷��� ������ �ڷ��� ( �ο�
    �����÷� NUMBER , --�����÷� �̶�� �÷��� ������ �ڷ��� (NUMBER) �ο�
    ��¥�÷� DATE ); --��¥�÷� �̶�� �÷��� ��¥�� �ڷ��� (DATE) �ο�
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , 1 , SYSDATE );-- �ɱ��
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , '3 �� ' , SYSDATE );-- �ɱ��
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'A' , 3 , 1 ); --�ɱ��
INSERT INTO �ڷ����׽�Ʈ ( �����÷� , �����÷� , ��¥�÷� ) VALUES ( 'BB' , '3' , SYSDATE );-- �ɱ��

COMMIT;

SELECT PRD_ID
      ,PRD_NAME
      ,PRD_PRICE
      ,5000 
      ,PRD_PRICE + 5000
      FROM TB_PRD;
      
SELECT PRD_ID
      ,PRD_NAME
      ,PRD_PRICE
      ,PRD_PRICE *0.1 AS �ΰ���ġ��
      ,PRD_PRICE*1.1 AS �ǸŰ���
      FROM TB_PRD;
SELECT GRADE_NAME || '(��޷���:' || GRADE_CD ||' )' AS ��޸������ 
      FROM TB_GRADE;
      

SELECT MEMBER_ID || 'ȸ���� ī���ȣ��' || PAY_CARD_NO ||'�Դϴ�.' AS ȸ����ī���ȣ
       FROM TB_MEMBER;

SELECT LOWER('ABCDE123@@') AS LOWER���
     FROM DUAL ;
SELECT MEMBER_ID, PASSWD, LOWER(PASSWD) AS �н�����ҹ���
     FROM TB_MEMBER;
SELECT PRD_ID
    , PRD_INFO
    , SUBSTR(PRD_INFO,1,5) || '...' AS ��ǰ�������
    FROM TB_PRD
    WHERE PRD_TYPE = '����';
    
SELECT MEMBER_ID
     , PAY_CARD_NO
     ,REPLACE(PAY_CARD_NO, '-','^M^') AS ����ī���ȣƯ������
     FROM TB_MEMBER
     WHERE GRADE_CD = 2;
     
SELECT SUBSTR('https://smhrd.co.kr/',9,5)
     FROM DUAL;
     
SELECT MEMBER_ID
      , MEMBER_NAME
      , JOIN_DY
      ,SUBSTR(JOIN_DY, 1,4) AS ���Գ⵵
      FROM TB_MEMBER;
      
SELECT MEMBER_ID
     , PAY_CARD_NO
     , REPLACE(PAY_CARD_NO,'-','/') AS �����ں���
     FROM TB_MEMBER;

