SELECT A.ȸ��ID
     , A.�̸�
     , B.����ó
  FROM ȸ�� A
     , ȸ������ó B
  WHERE A.ȸ��ID = B.ȸ��ID(+);
------------------------------Q1-------------
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.LIKE_PRD_TYPE
     , B.REG_DATE
  FROM TB_MEMBER A
     , TB_MEMBER_LIKE B
 WHERE A.MEMBER_ID = B.MEMBER_ID
   AND A.MEMBER_ID ='BBBBB';
   
----------------------------2��------------
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID(+);
 
 ------------------------3��-------------
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , A.GRADE_CD
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
 WHERE A.MEMBER_ID = B.MEMBER_ID(+)
   AND B.TEL_NO IS NULL;
------------------------4��------------
SELECT B.MEMBER_ID
     , B.MEMBER_NAME
     , C.PRD_ID
     , C.PRD_NAME
     , A.ORDER_NO
     , A.ORDER_DATE
  FROM TB_ORDER A
     , TB_MEMBER B
     , TB_PRD C
 WHERE A.PRD_ID = C.PRD_ID
   AND A.MEMBER_ID(+) = B.MEMBER_ID
   AND B.MEMBER_ID = 'AAAAA';
--------------------------------5��------------
SELECT B.MEMBER_ID
     , B.PRD_ID
     , A.PRD_NAME
  FROM TB_PRD A
     , TB_WISH B
 WHERE B.MEMBER_ID = 'AAAAA'
   AND A.PRD_ID = B.PRD_ID;
--------------------------------------------------------------------------------------
-----------------1��------------
SELECT A.PRD_ID
     , A.PRD_NAME
     , B.ORDER_NO
     , B.ORDER_DATE
  FROM TB_PRD A INNER JOIN TB_ORDER B
    ON (A.PRD_ID = B.PRD_ID)
    WHERE B.ORDER_NO = 4;
-----------------------2��-------------
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.TEL_NO
 FROM TB_MEMBER A LEFT OUTER JOIN TB_MEMBER_TEL B
 ON (A.MEMBER_ID = B.MEMBER_ID);
 
----------------------3��------------------
SELECT A.LIKE_PRD_TYPE
     , B.MEMBER_ID
     , B.MEMBER_NAME
  FROM TB_MEMBER_LIKE A RIGHT OUTER JOIN TB_MEMBER B
  ON (A.MEMBER_ID  = B.MEMBER_ID)
    WHERE A.LIKE_PRD_TYPE IS NULL;
    ----------------------------------------











