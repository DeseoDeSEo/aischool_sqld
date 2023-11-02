DROP TABLE 학생인적사항 ;
DROP TABLE 수강생정보 ; 
DROP TABLE 성적표 ; 

CREATE TABLE 수강생정보 (
학생ID VARCHAR2(9) PRIMARY KEY , 
학생이름 VARCHAR2(50) NOT NULL , 
소속반 VARCHAR2(5) 
); 

CREATE TABLE 성적표 ( 
    학생ID VARCHAR2(9) , 
    과목   VARCHAR2(30) , 
    성적   NUMBER  , 
    CONSTRAINT PK_성적표 PRIMARY KEY(학생ID , 과목) , 
    CONSTRAINT FK_성적표 FOREIGN KEY(학생ID) REFERENCES 수강생정보(학생ID) 
)  ; 

INSERT INTO 수강생정보 VALUES ('S0001' , '김현철' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0002' , '문현중' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0003' , '강문치' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0004' , '박나선' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0005' , '신태강' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0006' , '물고기' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0007' , '자라니' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0008' , '공팔두' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0009' , '최팔현' , 'C') ; 

INSERT INTO 성적표 VALUES('S0001'  ,'국어' , 90); 
INSERT INTO 성적표 VALUES('S0001'  ,'수학' , 85); 
INSERT INTO 성적표 VALUES('S0001'  ,'영어' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0003'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0003'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0003'  ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0004'  ,'국어' , 85); 
INSERT INTO 성적표 VALUES('S0004'  ,'수학' , 40); 
INSERT INTO 성적표 VALUES('S0004'  ,'영어' , 60); 
INSERT INTO 성적표 VALUES('S0005'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0005'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0005'  ,'영어' , 100); 
INSERT INTO 성적표 VALUES ( 'S0006' , '국어' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '수학' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '영어' , NULL ) ; 

COMMIT; 

SELECT * FROM 수강생정보;
SELECT * FROM 성적표;

SELECT 소속반 -- COUNT(*) AS 반별인원수
     FROM 수강생정보
     GROUP BY 소속반;
     
-------------------------------------------------------------------
SELECT 소속반, COUNT(*)
     FROM 수강생정보
     GROUP BY 소속반;
     
SELECT 학생ID, SUM(성적)
     FROM 성적표
     GROUP BY 학생ID;
SELECT 학생ID, AVG(성적)
     FROM 성적표
     GROUP BY 학생ID;
SELECT 학생ID, MAX(성적), MIN(성적)
     FROM 성적표
     GROUP BY 학생ID;
     --------------------------------------------------------------------------
--------------------------------------------------------------------------------
SELECT 학생ID, SUM(성적) AS 학생별성적합계
     FROM 성적표
     GROUP BY 학생ID;
     
SELECT PRD_TYPE, COUNT(PRD_TYPE) AS 상품타입별개수, MAX(PRD_PRICE) AS 상품별최고가
     FROM TB_PRD
     GROUP BY PRD_TYPE;
     
SELECT 학생ID, AVG(성적) AS 수학제외한평균
     FROM 성적표
     WHERE 과목 != '수학'  
     GROUP BY 학생ID;
     
SELECT A.MEMBER_ID
     , COUNT(B.TEL_NO) AS 연락처개수
     FROM TB_MEMBER A
         LEFT OUTER JOIN  TB_MEMBER_TEL B
         ON (A.MEMBER_ID = B.MEMBER_ID)
         GROUP BY A.MEMBER_ID;
-----------------------------------------------------------------------------------------
SELECT 소속반, COUNT(소속반) AS 반별인원수
  FROM 수강생정보
  GROUP BY 소속반
  HAVING COUNT(*) >=3;
  
SELECT PRD_TYPE , MAX(PRD_PRICE) AS 상품별최고가
 FROM TB_PRD
 GROUP BY PRD_TYPE
 HAVING MAX(PRD_PRICE) >1000000;
 
 SELECT PRD_TYPE, COUNT(PRD_NAME) AS 상품별개수
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
 , '사용자Z'
 ,  'ZZZZZ'
 , 'BBBB-BBBB-BBBB-BBBB'
 ,  TO_CHAR(SYSDATE, 'YYYYMMDD')
 ,  1
 , '여'
 , 'N');
------------------------------------------------------------------------------
COMMIT;
