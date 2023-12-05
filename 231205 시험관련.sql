----------------------------------------------------------------------------
------------------------------------계정생성-----------------------------------
----------------------------------------------------------------------------

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER kh_test IDENTIFIED BY test1234;

GRANT RESOURCE, CONNECT TO kh_test;

ALTER USER kh_test DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;

----------------------------------------------------------------------------

-- TB_USER 테이블 생성 및 SEQ_UNO 시퀀스 생성
CREATE TABLE TB_USER(
USER_NO NUMBER PRIMARY KEY,
USER_ID VARCHAR2(50) UNIQUE NOT NULL,
USER_NAME VARCHAR2(50) NOT NULL,
USER_AGE NUMBER NOT NULL
);

CREATE SEQUENCE SEQ_UNO;

-- 샘플 데이터 삽입
INSERT INTO TB_USER VALUES(SEQ_UNO.NEXTVAL, 'gd_hong', '홍길동', 20);
INSERT INTO TB_USER VALUES(SEQ_UNO.NEXTVAL, 'sh_han', '한소희', 28);
INSERT INTO TB_USER VALUES(SEQ_UNO.NEXTVAL, 'jm_park', '지민', 27);
INSERT INTO TB_USER VALUES(SEQ_UNO.NEXTVAL, 'jm123', '지민', 25);

COMMIT;

-- TB_USER 테이블 확인
SELECT * FROM TB_USER;

-- TB_USER 테이블 조회
SELECT USER_NO, USER_ID, USER_NAME, USER_AGE
FROM TB_USER
WHERE USER_ID = 'gd_hong';