SELECT MOD(10,3) FROM DUAL;
SELECT ROUND(1.452,2), ROUND(1.452,1)
FROM DUAL;
SELECT SYSDATE
    FROM DUAL;
SELECT SYSDATE + 1 AS �Ϸ����
     , SYSDATE + 1/24 AS �ѽð�����
     , SYSDATE +1/24/60/60 AS ���ʴ���
     FROM DUAL;
     

SELECT TO_NUMBER('1') FROM DUAL ; --������ (' �� ������ (1) �� ����ȯ�� ���

SELECT TO_CHAR(1) FROM DUAL ;--������ ( �� ������ ('1') �� ����ȯ�� ���

SELECT TO_CHAR(SYSDATE , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;

SELECT TO_CHAR(SYSDATE , 'YYYYMMDD') FROM DUAL ;

SELECT TO_DATE('20230101' , 'YYYY/MM/DD') FROM DUAL ;

SELECT TO_DATE('20230101141212' , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;
----------------------��������-------------
--YYYY:����4�ڸ�
--Mm:��2�ڸ�
--DD: ��2�ڸ�
--HH:�ð�(12����)
--HH24 :�ð� 24�ð���
--MI : ��
--SS:��
--------------------------------------------------


SELECT PRD_NAME
     , PRD_PRICE
     , SELL_COMP_NAME
     ,TO_CHAR(REG_DATE, 'YYYYMMDD') AS ����Ͻ�
     FROM TB_PRD;
SELECT MEMBER_ID
     , PASSWD
     , NVL(AGE, 20)
     FROM TB_MEMBER;
SELECT MEMBER_ID
     , GENDER
     , DECODE(GENDER,'��','MAN','��','WOMAN','ELSE') AS ����
     FROM TB_MEMBER;
-------------��¥ ���� ���͸��� �� ��, �ʺ��ڰ� ����� �� �ִ� ���
SELECT PRD_ID, PRD_NAME, REG_DATE
       FROM TB_PRD
       WHERE TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230501'
          OR TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230502';
---------------������ ���----
SELECT PRD_ID, PRD_NAME, REG_DATE
       FROM TB_PRD
       WHERE REG_DATE >= TO_DATE('2023050100000' , 'YYYYMMDDHH24MISS') --REG_DATE�� 2023��5��1�� 0��0��0�� �̻��� ���
         AND REG_DATE <= TO_DATE('20230502235959', 'YYYYMMDDHH24MISS'); --REG DATE�� 2023�� 05�� 02�� 23�� 59�� 59�� �����δ��
         
SELECT * 
     FROM TB_PRD
    WHERE TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230509';
         
SELECT PRD_NAME
     , PRD_INFO
     FROM TB_PRD
     WHERE REG_DATE >= TO_DATE('20230509000000','YYYYMMDDHH24MISS')
       AND REG_DATE <= TO_DATE('20230509235959','YYYYMMDDHH24MISS');
----------------------------------4.FROM�� ����
SELECT MEMBER_ID
     , MEMBER_NAME
  FROM TB_MEMBER
 WHERE GRADE_CD =1;
 
 
 SELECT *
   FROM TB_MEMBER
      , TB_MEMBER_TEL;

SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.MEMBER_ID
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B;


SELECT A.MEMBER_NAME
     , B.TEL_NO
  FROM TB_MEMBER  A
     , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID
   AND A.MEMBER_ID = 'AAAAA'
   AND B.TEL_DV_CD = '�޴���';
------------------------------------------------------------------------
 --FROM �ǽ� 1. TB_MEMBER���̺�� TB_MEMBER_TEL ���̺��� īƼ�� �����ؼ� �� �÷��� ������ּ���.
 
SELECT A.MEMBER_ID
      , A.MEMBER_NAME
      , B.MEMBER_ID
      , B.TEL_DV_CD
      , B.TEL_NO
  FROM TB_MEMBER A, TB_MEMBER_TEL B
  WHERE A.MEMBER_ID = B.MEMBER_ID;
 --Q2: 1������ �ۼ��� ������ �߰��� ���������� �ۼ��Ϸ����Ѵ�. �����̺��� MEMBER_ID �÷��� �������� ���������� �ۼ��� �Ʒ��� ���� ����� ������ּ���.
 SELECT A.MEMBER_ID
      , A.MEMBER_NAME
      , B.MEMBER_ID
      , B.TEL_DV_CD
      , B.TEL_NO
    FROM TB_MEMBER A
       , TB_MEMBER_TEL B
    WHERE A.MEMBER_ID = B.MEMBER_ID;
    
--Q3:�� 2������ �ۼ��� ������ �߰��� �Ϲ� ������ �ۼ��Ϸ��� �Ѵ�. 2������ ��µ� ������� TEL_DV_CD�� �޴����� ��� ���̵��� �Ʒ��� ���� ����� ������ּ���.
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.MEMBER_ID
     , B.TEL_DV_CD
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
  WHERE A.MEMBER_ID = B.MEMBER_ID
    AND TEL_DV_CD = '�޴���';

     
     