/*
 * - 데이터 딕셔너리
 * 자원을 효율적으로 관리하기 위한 다양한 정보를 저장하는 시스템 테이블
 * 데이터 딕셔너리는 사용자가 테이블을 생성하거나, 사용자를 변경하는 등의
 * 작업을 할 때 데이터베이스 서버에 의해 자동으로 갱신되는 테이블
 * 
 * - USER TABLES : 자신의 계정이 소유한 객체 등에 관한 정보를 조회할 수 있는 딕셔너리 뷰
 * 
 * 
 * */

SELECT * FROM USER_TABLES;

----------------------------------------------------------------------------------------

-- 암기하기 !!!!!!!!!!!
-- DQL(Data Query Language) : 데이터 질의(조회) 언어 -> SELECT
-- DML(Data Manipulation Language) : 데이터 조작 언어
-- 테이블에 데이터 삽입, 수정, 삭제

-- TCL(Transaction Control Language) : 트랜잭션 제어 언어
-- DML 수행 내용을 Commit, Rollback 하는 언어

-- DDL(Data Definition Language) : 데이터 정의 언어

-- 객체(OBJECT)를 만들고(CREATE), 수정(ALTER), 삭제(DROP) 등
-- 데이터의 전체 구조를 정의하는 언어로 주로 DB관리자, 설계자가 사용함


-- 오라클에서의 객체 : 테이블(TABLE), 뷰(VIEW), 시퀀스(SEQUENCE),
--						인덱스(INDEX), 패키지(PACKAGE), 트리거(TRIGGER)
--						프로시져(PROCEDURE), 함수(FUNCTION),
--						동의어(SYNONYM), 사용자(USER)


----------------------------------------------------------------------------------------


-- CREATE (창조, 생성)

-- 테이블이나 인덱스, 뷰 등 다양한 데이터베이스 객체를 생성하는 구문
-- 테이블로 생성된 객체는 DROP 구문을 통해 제거할 수 있음

-- 1. 테이블 생성하기


-- 테이블이란?
-- 행(row)과 열(column)으로 구성되는 가장 기본적인 데이터베이스 객체
-- 데이터베이스 내에서 모든 데이터는 테이블을 통해서 저장된다.

-- [표현식]
/*
 * 
 * CREATE TABLE 테이블명 (
 * 		컬럼명 자료형(크기),
 * 		컬럼명 자료형(크기),
 * 		컬럼명 자료형(크기)
 * 		....
 * );
 * 		
 * 
 * */

/*
 * 자료형
 * 
 * NUMBER : 숫자형(정수, 실수)
 * 
 * CHAR(크기) : 고정길이 문자형 (2000BYTE)
 * 		--> ex) CHAR(10) 컬럼에 'ABC' 3BYTE 문자열만 저장해도 10BYTE 저장공간을 모두 사용.
 * 
 * VARCHAR2(크기) : 가변길이 문자형 (4000BYTE)
 * 		--> ex) VARCHAR2(10) 컬럼에 'ABC' 3BYTE 문자열만 저장하면 나머지 7BYTE 반환함.
 * 
 * 
 * DATA : 날짜 타입
 * BLOB : 대용량 이진 데이터(4GB)
 * CLOB : 대용량 문자 데이터(4GB)
 * 
 * 
 * 
 * 
 * */

-- MEMBER 테이블 생성

CREATE TABLE "MEMBER"(
	MEMBER_ID VARCHAR2(20),
	MEMBER_PWD VARCHAR2(20),
	MEMBER_NAME VARCHAR2(30),
	MEMBER_SSN CHAR(14),
	ENROLL_DATE DATE DEFAULT SYSDATE
);

-- SQL 작성법 : 대문자 작성권장, 연결된 단어 사이는 "_" (언더바) 사용
-- 문자인코딩 UTF-8 : 영어, 숫자 1BYTE, 한글 3BYTE 취급


-- 만든 테이블 확인
SELECT * FROM MEMBER;

-- 2. 컬럼에 주석 달기
-- [표현식]
-- COMMENT ON COLUMN 테이블명.컬럼명 IS '주석내용';

COMMENT ON COLUMN MEMBER.MEMBER_ID IS '회원 아이디';
COMMENT ON COLUMN MEMBER.MEMBER_PWD IS '회원 비밀번호';
COMMENT ON COLUMN MEMBER.MEMBER_NAME IS '회원 이름';
COMMENT ON COLUMN MEMBER.MEMBER_SSN IS '회원 주민 등록 번호';
COMMENT ON COLUMN MEMBER.ENROLL_DATE IS '회원 가입일';


-- MEMBER 테이블에 샘플 데이터 삽입
-- INSERT INTO 테이블명 VALUES(값1, 값2, ...);

INSERT INTO MEMBER VALUES('MEM01', '123ABC', '홍길동', '991213-1234567', DEFAULT);

SELECT * FROM MEMBER;

-- * INSERT/UPDATE 시 컬럼값으로 DEFAULT 를 작성하면
-- 테이블 생성 시 해당 컬럼에 지정된 DEFAULT 값으로 삽입이 된다!


INSERT INTO MEMBER VALUES('MEM02', 'ASD123', '김영희', '970506-2233445', DEFAULT);
INSERT INTO MEMBER VALUES('MEM03', 'QWE123', '박철수', '940416-1212122', SYSDATE);

INSERT INTO MEMBER(MEMBER_ID, MEMBER_PWD, MEMBER_NAME)
VALUES('MEM04', 'TDS1213', '이지연');


-- ** JDBC에서 날짜를 입력받았을 때 삽입하는 방법**
-- '2022-09-13 17:33:27'
INSERT INTO MEMBER VALUES('MEM05', 'GDX123', '김길동', '930303-1333333',
						TO_DATE('2022-09-13 17:33:27', 'YYYY-MM-DD HH24:MI:SS'));
					
COMMIT;		



-- *** NUMBER 타입의 문제점 ***
CREATE TABLE MEMBER2 (
	MEMBER_ID VARCHAR2(20),
	MEMBER_PWD VARCHAR2(20),
	MEMBER_NAME VARCHAR2(30),
	MEMBER_TEL NUMBER
);


INSERT INTO MEMBER2 VALUES('MEM01', 'PASS01', '고길동', 7712341234);
INSERT INTO MEMBER2 VALUES('MEM02', 'PASS02', '고길순', 01012341234);

SELECT * FROM MEMBER2;

--> NUMBER 타입 컬럼에 데이터 삽입 시
-- 제일 앞에 0이 있으면 이를 자동으로 제거함
--> 전화번호, 주민등록번호 처럼 숫자로만 되어있는 데이터라도
--> 0으로 시작할 가능성이 있으면 CHAR, VARCHAR2 같은 문자형 사용


-------------------------------------------------------------------------------------------------

-- 제약조건(CONSTRAINTS)

/*
 * 사용자가 원하는 조건의 데이터만 유지하기 위해서
 * 특정 컬럼에 설정하는 제약.
 * 데이터 무결성 보장을 목적으로 함.
 *  --> 중복 데이터 x
 * 
 * + 입력 데이터에 문제가 없는지 자동으로 검사하는 목적
 * + 데이터의 수정/삭제 가능 여부 검사등을 목적으로 함
 *  --> 제약조건을 위배하는 DML 구문은 수행할 수 없다!
 * 
 * 제약조건 종류
 * PRIMARY KEY, NOT NULL, UNIQUE, CHECK, FOREIGN KEY
 * 
 * */

-- 1. NOT NULL
-- 해당 컬럼에 반드시 값이 기록되어야 하는 경우 사용
-- 삽입/수정 시 NULL값을 허용하지 않도록 컬럼레벨에서 제한

CREATE TABLE USER_USED_NN(
	USER_NO NUMBER NOT NULL, -- 사용자 번호 (모든 사용자는 사용자 번호가 있어야 한다.)
								--> 컬럼레벨 제약조건 설정
	USER_ID VARCHAR2(20),
	USER_PWD VARCHAR2(30),
	USER_NAME VARCHAR2(30),
	GENDER VARCHAR2(10),
	PHONE VARCHAR2(30),
	EMAIL VARCHAR2(50)
);

INSERT INTO USER_USED_NN 
VALUES(1, 'USER01', 'PASS01', '홍길동', '남', '010-1234-5678', 'hong1234@kh.or.kr');

INSERT INTO USER_USED_NN 
VALUES(NULL, NULL, NULL, NULL, NULL, '010-1234-5678', 'hong1234@kh.or.kr');
--> NOT NULL 제약조건에 위배되어 오류 발생
-- ORA-01400: NULL을 ("KH"."USER_USED_NN"."USER_NO") 안에 삽입할 수 없습니다


---------------------------------------------------------------------------------------------------

-- 2. UNIQUE 제약 조건
-- 컬럼에 입력값에 대해서 중복을 제한하는 제약조건
-- 컬럼레벨에서 설정 가능, 테이블 레벨에서 설정 가능
-- 단, UNIQUE 제약조건이 설정된 컬럼에 NULL 값은 중복 삽입 가능.

-- * 테이블레벨 : 테이블 생성 시 컬럼 정의가 끝난 후 마지막에 작성

-- * 제약조건 지정 방법
-- 1) 컬럼 레벨 : [CONSTRAINT 제약조건명] 제약조건
-- 2) 테이블 레벨 : [CONSTRAINT 제약조건명] 제약조건(컬럼명)


-- UNIQUE 제약조건 테이블 생성

CREATE TABLE USER_USED_UK(
	USER_NO NUMBER,
	--USER_ID VARCHAR2(20) UNIQUE, -- 컬럼레벨 (제약조건명 미지정)
	--USER_ID VARCHAR2(20) CONSTRAINT USER_ID_U UNIQUE -- 컬럼레벨 (제약조건명 지정)
	USER_ID VARCHAR2(20),
	USER_PWD VARCHAR2(30),
	USER_NAME VARCHAR2(30),
	GENDER VARCHAR2(10),
	PHONE VARCHAR2(30),
	EMAIL VARCHAR2(50),
	/* 테이블 레벨 */
	--UNIQUE(USER_ID) -- 테이블레벨 (제약조건명 미지정)
	CONSTRAINT USER_ID_U UNIQUE(USER_ID) -- 테이블 레벨 (제약조건명 지정)
);


INSERT INTO USER_USED_UK
VALUES(1, 'USER01', 'PASS01', '홍길동', '남', '010-1234-5678', 'hong1234@kh.or.kr');

INSERT INTO USER_USED_UK
VALUES(1, 'USER01', 'PASS01', '홍길동', '남', '010-1234-5678', 'hong1234@kh.or.kr');
-- ORA-00001: 무결성 제약 조건(KH.USER_ID_U)에 위배됩니다
-- 같은 아이디인 데이터가 이미 테이블에 있으므로 UNIQUE 제약조건에 위배되어 오류발생


INSERT INTO USER_USED_UK
VALUES(1, NULL, 'PASS01', '홍길동', '남', '010-1234-5678', 'hong1234@kh.or.kr');
--> 아이디에 NULL 값 삽입 가능.


INSERT INTO USER_USED_UK
VALUES(1, NULL, 'PASS01', '홍길동', '남', '010-1234-5678', 'hong1234@kh.or.kr');
--> 아이디에 NULL 값 중복 삽입 가능

SELECT * FROM USER_USED_UK;


--------------------------------------------------------------------------------------------------


-- UNIQUE 복합키
-- 두 개 이상의 컬럼을 묶어서 하나의 UNIQUE 제약조건을 설정함












