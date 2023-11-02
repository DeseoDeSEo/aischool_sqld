SELECT MOD(10,3) FROM DUAL;
SELECT ROUND(1.452,2), ROUND(1.452,1)
FROM DUAL;
SELECT SYSDATE
    FROM DUAL;
SELECT SYSDATE + 1 AS 하루더함
     , SYSDATE + 1/24 AS 한시간더함
     , SYSDATE +1/24/60/60 AS 일초더함
     FROM DUAL;
     

SELECT TO_NUMBER('1') FROM DUAL ; --문자형 (' 을 숫자형 (1) 로 형변환해 출력

SELECT TO_CHAR(1) FROM DUAL ;--숫자형 ( 을 문자형 ('1') 로 형변환해 출력

SELECT TO_CHAR(SYSDATE , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;

SELECT TO_CHAR(SYSDATE , 'YYYYMMDD') FROM DUAL ;

SELECT TO_DATE('20230101' , 'YYYY/MM/DD') FROM DUAL ;

SELECT TO_DATE('20230101141212' , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;
----------------------형태정리-------------
--YYYY:연도4자리
--Mm:월2자리
--DD: 일2자리
--HH:시간(12시제)
--HH24 :시간 24시간제
--MI : 분
--SS:초
--------------------------------------------------


SELECT PRD_NAME
     , PRD_PRICE
     , SELL_COMP_NAME
     ,TO_CHAR(REG_DATE, 'YYYYMMDD') AS 등록일시
     FROM TB_PRD;
SELECT MEMBER_ID
     , PASSWD
     , NVL(AGE, 20)
     FROM TB_MEMBER;
SELECT MEMBER_ID
     , GENDER
     , DECODE(GENDER,'남','MAN','여','WOMAN','ELSE') AS 성별
     FROM TB_MEMBER;
-------------날짜 관련 필터링을 할 때, 초보자가 사용할 수 있는 방법
SELECT PRD_ID, PRD_NAME, REG_DATE
       FROM TB_PRD
       WHERE TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230501'
          OR TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230502';
---------------정석인 방법----
SELECT PRD_ID, PRD_NAME, REG_DATE
       FROM TB_PRD
       WHERE REG_DATE >= TO_DATE('2023050100000' , 'YYYYMMDDHH24MISS') --REG_DATE가 2023년5월1일 0시0분0초 이상인 대상
         AND REG_DATE <= TO_DATE('20230502235959', 'YYYYMMDDHH24MISS'); --REG DATE가 2023년 05월 02일 23시 59분 59초 이하인대상
         
SELECT * 
     FROM TB_PRD
    WHERE TO_CHAR(REG_DATE, 'YYYYMMDD') = '20230509';
         
SELECT PRD_NAME
     , PRD_INFO
     FROM TB_PRD
     WHERE REG_DATE >= TO_DATE('20230509000000','YYYYMMDDHH24MISS')
       AND REG_DATE <= TO_DATE('20230509235959','YYYYMMDDHH24MISS');
----------------------------------4.FROM과 조인
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
   AND B.TEL_DV_CD = '휴대폰';
------------------------------------------------------------------------
 --FROM 실습 1. TB_MEMBER테이블과 TB_MEMBER_TEL 테이블을 카티션 조인해서 각 컬럼을 출력해주세요.
 
SELECT A.MEMBER_ID
      , A.MEMBER_NAME
      , B.MEMBER_ID
      , B.TEL_DV_CD
      , B.TEL_NO
  FROM TB_MEMBER A, TB_MEMBER_TEL B
  WHERE A.MEMBER_ID = B.MEMBER_ID;
 --Q2: 1번에서 작성한 쿼리에 추가로 조인조건을 작성하려고한다. 각테이블의 MEMBER_ID 컬럼을 기준으로 조인조건을 작성해 아래와 같은 결과를 출력해주세요.
 SELECT A.MEMBER_ID
      , A.MEMBER_NAME
      , B.MEMBER_ID
      , B.TEL_DV_CD
      , B.TEL_NO
    FROM TB_MEMBER A
       , TB_MEMBER_TEL B
    WHERE A.MEMBER_ID = B.MEMBER_ID;
    
--Q3:위 2번에서 작성한 쿼리에 추가로 일반 조건을 작성하려고 한다. 2번에서 출력된 결과에서 TEL_DV_CD가 휴대폰인 대상만 보이도록 아래와 같이 결과를 출력해주세요.
SELECT A.MEMBER_ID
     , A.MEMBER_NAME
     , B.MEMBER_ID
     , B.TEL_DV_CD
     , B.TEL_NO
  FROM TB_MEMBER A
     , TB_MEMBER_TEL B
  WHERE A.MEMBER_ID = B.MEMBER_ID
    AND TEL_DV_CD = '휴대폰';

     
     