SELECT * 
     FROM SHOPPING.TB_MEMBER;
SELECT * 
     FROM SHOPPING.TB_PRD
     
     WHERE PRD_PRICE =0;
     
     
SELECT ROWNUM AS RN
     , MEMBER_ID
     , MEMBER_NAME
     , JOIN_DY
     , AGE
     FROM SHOPPING.TB_MEMBER;