CREATE TABLE QUIZ_TABLE (
    Q_ID NUMBER(3,0) NOT NULL
    , Q_CONTENG VARCHAR2(200) NOT NULL
    , Q_ANSWER VARCHAR2(200)
    , REG_DATE DATE DEFAULT SYSDATE
    );
    SELECT * FROM QUIZ_TABLE;
    
INSERT INTO QUIZ_TABLE(
     Q_ID NUMBER(3,0) NOT NULL
     , Q_CONTENG VARCHAR2(200) NOT NULL
     , Q_ANSWER VARCHAR2(100)
     , REG_DATE DATE DEFAULT SYSDATE);
     
VALUES(1
    , '쥐는 영어로 무엇일까요?'
    , ' MOUSE'
    , TO_CHAR(SYSDATE , 'YYYYMMDD');
VALUES (2
       ,'달력은 영어로 무엇일까요?'
       ,'CALENDAR'
       ,SYSDATE);
VALUES(30
0     ,00 '종이는 영어로 무엇일까요?'
     ,'PAPER'
     ,SYSDATE;)
-- INSERT INTO QUIZ_TABLE VALUES(1, '쥐는 영어로 무엇일까요?','MOUSE',SYSDATE);
--...

SELECT * FROM QUI QUIZ TABLE;
VALUES(3,'TEST'