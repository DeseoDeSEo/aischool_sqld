    SELECT * FROM MEMBER;
    INSERT INTO MEMBER VALUES('admin','1234','������','admin@google.com','010-2344-2222','����',36);
    INSERT INTO MEMBER VALUES('user1','1234','�����1','user1@google.com','010-1111-2222','����',34);
    INSERT INTO MEMBER VALUES('user2','1234','�����2','user2@google.com','010-1112-2222','����',27);
    INSERT INTO MEMBER VALUES('user3','1234','�����3','user3@google.com','010-1113-2222','����',28);
    INSERT INTO MEMBER VALUES('user4','1234','�����4','user4@google.com','010-1114-2222','����',24);
    INSERT INTO MEMBER VALUES('user5','1234','�����5','user5@google.com','010-1115-2222','����',30);
    INSERT INTO MEMBER VALUES('user6','1234','�����6','user6@google.com','010-1116-2222','����',40);
    INSERT INTO MEMBER VALUES('user77777','1234','�����7','user7@google.com','010-1234-2222','����',50);
    COMMIT;
    
    CREATE TABLE MSGMEMBER (
        EMAIL VARCHAR2(100) PRIMARY KEY
        , PW VARCHAR2(100) NOT NULL
        , PHONE VARCHAR2(100) NOT NULL
        , ADDR VARCHAR2(100) NOT NULL
        );
    INSERT INTO MSGMEMBER VALUES (
    'admin@gmail.com', '12345','010-1234-7777', '���ֱ����� ���� ������ 77');
    COMMIT;
    SELECT * FROM MSGMEMBER; 
    CREATE TABLE MESSAGE(
        NUM NUMBER PRIMARY KEY,
        SEND_NAME VARCHAR2(100),
        RECEIVE_EMAIL VARCHAR2(100),
        CONTENT VARCHAR2(1000),
        SEND_DATE DATE
    );
    CREATE SEQUENCE MSG_NUM START WITH 1 INCREMENT BY 1;
    INSERT INTO MESSAGE VALUES(msg_num.nextval,'siempreFeliz@naver.com','SEofeliz@naver.com','�׽�Ʈ����',SYSDATE);
    SELECT * FROM MESSAGE;
    COMMIT;
    
    
    
    
    