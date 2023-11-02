DROP TABLE �л��������� ;
DROP TABLE ���������� ; 
DROP TABLE ����ǥ ; 

CREATE TABLE ���������� (
�л�ID VARCHAR2(9) PRIMARY KEY , 
�л��̸� VARCHAR2(50) NOT NULL , 
�Ҽӹ� VARCHAR2(5) 
); 

CREATE TABLE ����ǥ ( 
    �л�ID VARCHAR2(9) , 
    ����   VARCHAR2(30) , 
    ����   NUMBER  , 
    CONSTRAINT PK_����ǥ PRIMARY KEY(�л�ID , ����) , 
    CONSTRAINT FK_����ǥ FOREIGN KEY(�л�ID) REFERENCES ����������(�л�ID) 
)  ; 

INSERT INTO ���������� VALUES ('S0001' , '����ö' , 'A') ; 
INSERT INTO ���������� VALUES ('S0002' , '������' , 'A') ; 
INSERT INTO ���������� VALUES ('S0003' , '����ġ' , 'B') ; 
INSERT INTO ���������� VALUES ('S0004' , '�ڳ���' , 'B') ; 
INSERT INTO ���������� VALUES ('S0005' , '���°�' , 'B') ; 
INSERT INTO ���������� VALUES ('S0006' , '�����' , 'C') ; 
INSERT INTO ���������� VALUES ('S0007' , '�ڶ��' , 'C') ; 
INSERT INTO ���������� VALUES ('S0008' , '���ȵ�' , 'C') ; 
INSERT INTO ���������� VALUES ('S0009' , '������' , 'C') ; 

INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 90); 
INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 40); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 60); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 

COMMIT; 

SELECT * FROM ����������;
SELECT * FROM ����ǥ;

SELECT �Ҽӹ� -- COUNT(*) AS �ݺ��ο���
     FROM ����������
     GROUP BY �Ҽӹ�;
     
-------------------------------------------------------------------
SELECT �Ҽӹ�, COUNT(*)
     FROM ����������
     GROUP BY �Ҽӹ�;
     
SELECT �л�ID, SUM(����)
     FROM ����ǥ
     GROUP BY �л�ID;
SELECT �л�ID, AVG(����)
     FROM ����ǥ
     GROUP BY �л�ID;
SELECT �л�ID, MAX(����), MIN(����)
     FROM ����ǥ
     GROUP BY �л�ID;
     --------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT �л�ID, SUM(����) AS �л��������հ�
     FROM ����ǥ
     GROUP BY �л�ID;
     
SELECT PRD_TYPE, COUNT(PRD_TYPE) AS ��ǰŸ�Ժ�����, MAX(PRD_PRICE) AS ��ǰ���ְ�
     FROM TB_PRD
     GROUP BY PRD_TYPE;
     
SELECT �л�ID, AVG(����) AS �������������
     FROM ����ǥ
     WHERE ���� != '����'  
     GROUP BY �л�ID;
     
SELECT A.MEMBER_ID
     , COUNT(B.TEL_NO) AS ����ó����
     FROM TB_MEMBER A
         LEFT OUTER JOIN  TB_MEMBER_TEL B
         ON (A.MEMBER_ID = B.MEMBER_ID)
         GROUP BY A.MEMBER_ID;
-----------------------------------------------------------------------------------------
SELECT �Ҽӹ�, COUNT(�Ҽӹ�) AS �ݺ��ο���
  FROM ����������
  GROUP BY �Ҽӹ�
  HAVING COUNT(*) >=3;
  
SELECT PRD_TYPE , MAX(PRD_PRICE) AS ��ǰ���ְ�
 FROM TB_PRD
 GROUP BY PRD_TYPE
 HAVING MAX(PRD_PRICE) >1000000;
 
 SELECT PRD_TYPE, COUNT(PRD_NAME) AS ��ǰ������
   FROM TB_PRD
   GROUP BY PRD_TYPE
   HAVING COUNT(*)=4;
--------------------------------------------------------------------------------

SELECT PRD_ID
     , PRD_NAME
     , PRD_TYPE
     , PRD_PRICE
     FROM TB_PRD
     ORDER BY PRD_PRICE DESC;
 ---------------------------------------------------------------------------------
 INSERT INTO TB_MEMBER(
 MEMBER_ID
 , MEMBER_NAME
 , PASSWD
 , PAY_CARD_NO
 , JOIN_DY
 , GRADE_CD
 , GENDER
 , DEL_YN)
 VALUES (
 'ZZZZZ'
 , '�����Z'
 ,  'ZZZZZ'
 , 'BBBB-BBBB-BBBB-BBBB'
 ,  TO_CHAR(SYSDATE, 'YYYYMMDD')
 ,  1
 , '��'
 , 'N');
------------------------------------------------------------------------------
COMMIT;
