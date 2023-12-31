CREATE TABLE DOG (
	DOG_NO	NUMBER	NOT NULL,
	BREED_NO NUMBER	NOT NULL,
	DOG_NAME	VARCHAR2(20)	NOT NULL,
	DOG_BIRTHDAY	DATE	NOT NULL,
	DOG_GENDER	VARCHAR2(10)	NOT NULL,
	DOG_SIZE	VARCHAR2(10)	NOT NULL,
	DOG_PERSONALITY	VARCHAR2(30),
	DOG_NEUTERING_YN	CHAR(1) DEFAULT 'N' NOT NULL	,
	DOG_VACCIN_YN	CHAR(1)	 DEFAULT 'N' NOT NULL,
	DOG_LIKE	VARCHAR2(50),
	DOG_HATE	VARCHAR2(50),
	DOG_SIGNIFICANT	VARCHAR2(100),
	DOG_ADMISSION_DATE DATE DEFAULT SYSDATE NOT NULL,
	DOG_ADOPT_FL	CHAR(1)	 DEFAULT 'N' NOT NULL
);

CREATE TABLE MEMBER (
	MEMBER_NO	NUMBER	NOT NULL,
	MEMBER_ID	VARCHAR2(30)	NOT NULL,
	MEMBER_PW	VARCHAR2(200)	NOT NULL,
	MEMBER_EMAIL	VARCHAR2(100)	NOT NULL,
	MEMBER_NAME	VARCHAR2(30)	NOT NULL,
	MEMBER_TEL	VARCHAR2(30)	NOT NULL,
	MEMBER_NICKNAME	VARCHAR2(50)	NOT NULL,
	MEMBER_ADDRESS	VARCHAR2(500)	NULL,
	MEMBER_PROFILE	VARCHAR2(300)	NULL,
	MEMBER_ENROLL_DATE	DATE DEFAULT SYSDATE	NOT NULL,
	ADMIN_YN	CHAR(1)	DEFAULT 'N' NOT NULL,
	MEMBER_DEL_YN	CHAR(1)	DEFAULT 'N' NOT NULL
	API_AUTH_ID	VARCHAR2(250) NULL,
	PLATFORM_CODE VARCHAR2(1) NULL
);

-- MEMBER 테이블 컬럼 추가 시
--ALTER TABLE "MEMBER"
--ADD (API_AUTH_ID VARCHAR2(250));

--ALTER TABLE "MEMBER"
--ADD (PLATFORM_CODE VARCHAR2(1));

CREATE TABLE DOG_BREED (
	BREED_NO	NUMBER	NOT NULL,
	BREED_NAME	VARCHAR2(100)	NOT NULL
);

CREATE TABLE EMAIL_CHECK (
	CHECK_NO	NUMBER	NOT NULL,
	CHECK_KEY	CHAR(6)	NOT NULL,
	CHECK_EMAIL	VARCHAR2(100)	NOT NULL,
	CHECK_DATE	DATE DEFAULT SYSDATE	NOT NULL	
);

CREATE TABLE ACTIVITY_LOG (
	ACTIVITY_NO	NUMBER	NOT NULL,
	MEMBER_NO	NUMBER	NOT NULL,
	ACTIVITY_IMG	VARCHAR2(300)	NOT NULL,
	ACTIVITY_CONTENT	VARCHAR2(4000)	NULL,
	ACTIVITY_DATE	DATE DEFAULT SYSDATE	NOT NULL	
);

CREATE TABLE ADMISSION (
	ADM_NO	NUMBER	NOT NULL,
	ADM_PROFILE	VARCHAR2(300),
	ADM_NAME	VARCHAR2(50)	NOT NULL,
	ADM_BIRTHDAY	DATE	NOT NULL,
	ADM_PHONE	VARCHAR2(50)	NOT NULL,
	ADM_BREED	VARCHAR2(100)	NOT NULL,
	ADM_GENDER	CHAR(1)	 NOT NULL,
	ADM_NEUTERING_YN	CHAR(1)	 DEFAULT 'N' NOT NULL,
	ADM_VACCIN_YN	CHAR(1)	DEFAULT 'N' NULL,
	ADM_SIGNIFICANT	VARCHAR2(500),
	ADM_APPLY_DATE	DATE DEFAULT SYSDATE	NOT NULL,
	ADM_HOPE_DATE	DATE	NOT NULL,
	ADM_YN	CHAR(1)	 DEFAULT 'N' NOT NULL,
	ADM_MEMBER_NO	NUMBER	NULL
);

CREATE TABLE REVIEW (
	REVIEW_NO	NUMBER	NOT NULL,
	MEMBER_NO	NUMBER	NOT NULL,
	REVIEW_TITLE	VARCHAR2(100)	NOT NULL,
	REVIEW_CONTENT	VARCHAR2(4000)	NOT NULL,
	REVIEW_VIEWS_COUNT	NUMBER	DEFAULT 0 NOT NULL,
	REVIEW_DATE	DATE DEFAULT SYSDATE	NOT NULL,
	REVIEW_YN	CHAR(1)	DEFAULT 'N' NOT NULL
);

CREATE TABLE DOG_LIKE (
	LIKE_NO	NUMBER	NOT NULL,
	DOG_NO	NUMBER	NOT NULL,
	MEMBER_NO	NUMBER	NOT NULL
);

CREATE TABLE ENQUIRY (
	ENQUIRY_NO	NUMBER	NOT NULL,
	MEMBER_NO	NUMBER	NOT NULL,
	ENQUIRY_TITLE	VARCHAR2(100)	NOT NULL,
	ENQUIRY_CONTENT	VARCHAR2(4000)	NOT NULL,
	ENQUIRY_DATE	DATE DEFAULT SYSDATE NOT NULL,
	ENQUIRY_STATUS	CHAR(1)	DEFAULT 'N' NOT NULL,
	ENQUIRY_COMPLETE_DATE	DATE DEFAULT SYSDATE
);

CREATE TABLE ACTIVITY_LOG_LIKE (
	ACTIVITY_LIKE_NO	NUMBER	NOT NULL,
	MEMBER_NO	NUMBER	NOT NULL,
	ACTIVITY_NO	NUMBER	NOT NULL
);

CREATE TABLE REVIEW_IMG (
	IMG_NO	NUMBER	NOT NULL,
	REVIEW_NO	NUMBER	NOT NULL,
	IMG_PATH	VARCHAR2(300)	NOT NULL,
	IMG_RENAME	VARCHAR2(30)	NOT NULL,
	IMG_ORIGINAL	VARCHAR2(300)	NOT NULL,
	IMG_ORDER	NUMBER	NOT NULL
);

CREATE TABLE DOG_IMG (
	IMG_NO	NUMBER	NOT NULL,
	DOG_NO	NUMBER	NOT NULL,
	IMG_PATH	VARCHAR2(300)	NOT NULL,
	IMG_RENAME	VARCHAR2(30)	NOT NULL,
	IMG_ORIGINAL	VARCHAR2(300)	NOT NULL,
	IMG_ORDER	NUMBER	NOT NULL
);



ALTER TABLE DOG ADD CONSTRAINT PK_DOG PRIMARY KEY (
	DOG_NO
);

ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	MEMBER_NO
);

ALTER TABLE DOG_BREED ADD CONSTRAINT PK_DOG_BREED PRIMARY KEY (
	BREED_NO
);

ALTER TABLE EMAIL_CHECK ADD CONSTRAINT PK_EMAIL_CHECK PRIMARY KEY (
	CHECK_NO
);

ALTER TABLE ACTIVITY_LOG ADD CONSTRAINT PK_ACTIVITY_LOG PRIMARY KEY (
	ACTIVITY_NO
);

ALTER TABLE ADMISSION ADD CONSTRAINT PK_ADMISSION PRIMARY KEY (
	ADM_NO
);

ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	REVIEW_NO
);

ALTER TABLE DOG_LIKE ADD CONSTRAINT PK_DOG_LIKE PRIMARY KEY (
	LIKE_NO
);

ALTER TABLE ENQUIRY ADD CONSTRAINT PK_ENQUIRY PRIMARY KEY (
	ENQUIRY_NO
);

ALTER TABLE ACTIVITY_LOG_LIKE ADD CONSTRAINT PK_ACTIVITY_LOG_LIKE PRIMARY KEY (
	ACTIVITY_LIKE_NO
);

ALTER TABLE REVIEW_IMG ADD CONSTRAINT PK_REVIEW_IMG PRIMARY KEY (
	IMG_NO
);

ALTER TABLE DOG_IMG ADD CONSTRAINT PK_DOG_IMG PRIMARY KEY (
	IMG_NO
);



CREATE SEQUENCE SEQ_DOG_IMG_NO START WITH 1 INCREMENT BY 1 NOCYCLE;

CREATE SEQUENCE SEQ_BREED_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_DOG_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_ADM_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_ENQUIRY_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_LIKE_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_ACTIVITY_LIKE_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_ACTIVITY_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_MEMBER_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_REVIEW_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_REVIEW_IMG_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;
   
CREATE SEQUENCE SEQ_CHECK_NO
    START WITH 1 INCREMENT BY 1 NOCYCLE;

   
   
   
ALTER TABLE DOG ADD CONSTRAINT FK_DOG_BREED_TO_DOG_1 FOREIGN KEY (BREED_NO)
	REFERENCES DOG_BREED (BREED_NO) ON DELETE CASCADE;

ALTER TABLE ACTIVITY_LOG ADD CONSTRAINT FK_MEMBER_TO_ACTIVITY_LOG_1 FOREIGN KEY (MEMBER_NO)
	REFERENCES MEMBER (MEMBER_NO) ON DELETE CASCADE;

ALTER TABLE REVIEW ADD CONSTRAINT FK_MEMBER_TO_REVIEW_1 FOREIGN KEY (MEMBER_NO)
	REFERENCES MEMBER (MEMBER_NO) ON DELETE CASCADE;

ALTER TABLE DOG_LIKE ADD CONSTRAINT FK_DOG_TO_DOG_LIKE_1 FOREIGN KEY (DOG_NO)
	REFERENCES DOG (DOG_NO) ON DELETE CASCADE;

ALTER TABLE DOG_LIKE ADD CONSTRAINT FK_MEMBER_TO_DOG_LIKE_1 FOREIGN KEY (MEMBER_NO)
	REFERENCES MEMBER (MEMBER_NO) ON DELETE CASCADE;

ALTER TABLE ENQUIRY ADD CONSTRAINT FK_MEMBER_TO_ENQUIRY_1 FOREIGN KEY (MEMBER_NO)
	REFERENCES MEMBER (MEMBER_NO) ON DELETE CASCADE;

ALTER TABLE ACTIVITY_LOG_LIKE ADD CONSTRAINT FK_MEMBER_TO_ACTIVITY_LOG_LIKE_1 FOREIGN KEY (MEMBER_NO)
	REFERENCES MEMBER(MEMBER_NO)  ON DELETE CASCADE;

ALTER TABLE ACTIVITY_LOG_LIKE ADD CONSTRAINT FK_ACTIVITY_LOG_TO_ACTIVITY_LOG_LIKE_1 FOREIGN KEY (ACTIVITY_NO)
	REFERENCES ACTIVITY_LOG (ACTIVITY_NO) ON DELETE CASCADE;

ALTER TABLE REVIEW_IMG ADD CONSTRAINT FK_REVIEW_TO_REVIEW_IMG_1 FOREIGN KEY (REVIEW_NO)
	REFERENCES REVIEW (REVIEW_NO) ON DELETE CASCADE;
	
ALTER TABLE DOG_IMG ADD CONSTRAINT FK_DOG_TO_DOG_IMG_1 FOREIGN KEY (DOG_NO)
	REFERENCES DOG (DOG_NO) ON DELETE CASCADE;




COMMENT ON COLUMN MEMBER.MEMBER_NO  IS '회원번호';
COMMENT ON COLUMN MEMBER.MEMBER_ID  IS '회원아이디';
COMMENT ON COLUMN MEMBER.MEMBER_PW  IS '회원비밀번호';
COMMENT ON COLUMN MEMBER.MEMBER_EMAIL  IS '이메일';
COMMENT ON COLUMN MEMBER.MEMBER_NAME  IS '이름';
COMMENT ON COLUMN MEMBER.MEMBER_TEL  IS '전화번호';
COMMENT ON COLUMN MEMBER.MEMBER_NICKNAME  IS '닉네임';
COMMENT ON COLUMN MEMBER.MEMBER_ADDRESS  IS '주소';
COMMENT ON COLUMN MEMBER.MEMBER_PROFILE  IS '프로필';
COMMENT ON COLUMN MEMBER.MEMBER_ENROLL_DATE  IS '회원가입일';
COMMENT ON COLUMN MEMBER.ADMIN_YN  IS '권한여부';
COMMENT ON COLUMN MEMBER.MEMBER_DEL_YN  IS '탈퇴여부';
COMMENT ON COLUMN MEMBER.API_AUTH_ID  IS '연계인증아이디';
COMMENT ON COLUMN MEMBER.PLATFORM_CODE  IS '플랫폼구분코드';

COMMENT ON COLUMN ACTIVITY_LOG.ACTIVITY_NO  IS '활동일지번호';
COMMENT ON COLUMN ACTIVITY_LOG.ACTIVITY_IMG  IS '활동사진';
COMMENT ON COLUMN ACTIVITY_LOG.ACTIVITY_CONTENT  IS '활동내용';
COMMENT ON COLUMN ACTIVITY_LOG.ACTIVITY_DATE  IS '등록일';


COMMENT ON COLUMN ACTIVITY_LOG_LIKE.ACTIVITY_LIKE_NO  IS '활동일지좋아요번호';
COMMENT ON COLUMN ACTIVITY_LOG_LIKE.MEMBER_NO  IS '회원번호';
COMMENT ON COLUMN ACTIVITY_LOG_LIKE.ACTIVITY_NO  IS '활동일지번호';

COMMENT ON COLUMN EMAIL_CHECK.CHECK_NO  IS '인증키번호';
COMMENT ON COLUMN EMAIL_CHECK.CHECK_KEY  IS '인증키';
COMMENT ON COLUMN EMAIL_CHECK.CHECK_EMAIL  IS '인증이메일';
COMMENT ON COLUMN EMAIL_CHECK.CHECK_DATE  IS '등록일';


-------------------------------------------------------------------------------------------


-- MEMBER TABLE 데이터 삽입

-- 1) 관리자 계정
INSERT INTO MEMBER 
	VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user01', 'pass01', 'o3odw98@gmail.com', '유저일', '010-1111-2222', '유쩌일', 
			'99999^^^서울시 숭인로 12길^^^2층', NULL, DEFAULT, 'Y', DEFAULT);
	
-- 2) 일반 계정		
INSERT INTO MEMBER 
	VALUES(SEQ_MEMBER_NO.NEXTVAL, 'user02', 'pass02', 'user02@kh.or.kr', '유저이', '010-1111-3333', '유쩌이', 
			'88888^^^서울시 숭인로 11길^^^3층', NULL, DEFAULT, DEFAULT, DEFAULT);
		
COMMIT;

SELECT * FROM MEMBER;

-------------------------------------------------------------------------------------------


-- ACTIVITY_LOG TABLE 데이터 삽입
INSERT INTO ACTIVITY_LOG 
	VALUES(SEQ_ACTIVITY_NO.NEXTVAL, 1, '/dog1', '오늘은 들판으로 나가서 신나게 뛰어놀았어요!', DEFAULT);
		
COMMIT;

SELECT * FROM ACTIVITY_LOG;

-------------------------------------------------------------------------------------------


-- ACTIVITY_LOG_LIKE TABLE 데이터 삽입
INSERT INTO ACTIVITY_LOG_LIKE 
	VALUES(SEQ_ACTIVITY_LIKE_NO.NEXTVAL, 1, 1);
		
COMMIT;

SELECT * FROM ACTIVITY_LOG_LIKE;





-- -------------------------------------------------------------------------------------------

-- 로그인
SELECT MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_TEL, MEMBER_NICKNAME, MEMBER_ADDRESS, MEMBER_PROFILE, 
TO_CHAR(MEMBER_ENROLL_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') AS MEMBER_ENROLL_DATE, ADMIN_YN, MEMBER_DEL_YN
FROM "MEMBER"
WHERE MEMBER_DEL_YN = 'N'
AND MEMBER_ID = 'user01';

-- 회원가입
INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL
, #{memberId}
, #{memberPw}
, #{memberEmail}
, #{memberName}
, #{memberTel}
, #{memberNickname}
, #{memberAddress}
, #{memberProfile}
, DEFAULT, DEFAULT, DEFAULT, NULL, NULL)

-- 아이디찾기
SELECT MEMBER_ID
FROM "MEMBER"
WHERE MEMBER_NAME = '유저일'
AND MEMBER_EMAIL = 'o3odw98@gmail.com'
AND MEMBER_DEL_YN = 'N';

-- 비밀번호찾기
UPDATE "MEMBER" SET 
MEMBER_PW = 'pass02'
WHERE MEMBER_ID = 'user02';

-- 아이디 중복검사
SELECT COUNT(*)
FROM "MEMBER"
WHERE MEMBER_ID = 'user01'
AND MEMBER_DEL_YN = 'N';

-- 회원 비밀번호 조회
SELECT MEMBER_PW FROM MEMBER WHERE MEMBER_NO = 1;

-- 회원 탈퇴
UPDATE MEMBER SET MEMBER_DEL_YN = 'Y' WHERE MEMBER_NO = 1;

-- 이메일 중복검사
SELECT COUNT(*)
FROM "MEMBER"
WHERE MEMBER_EMAIL = 'o3odw98@gmail.com'
AND MEMBER_DEL_YN = 'N';

-- 닉네임 중복검사
SELECT COUNT(*)
FROM "MEMBER"
WHERE MEMBER_NICKNAME = '유쩌일'
AND MEMBER_DEL_YN = 'N';

-- 회원리스트 조회하기
SELECT MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_TEL, MEMBER_NICKNAME, MEMBER_ADDRESS, MEMBER_PROFILE, 
TO_CHAR(MEMBER_ENROLL_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') AS MEMBER_ENROLL_DATE, ADMIN_YN, MEMBER_DEL_YN
FROM "MEMBER"
WHERE MEMBER_ID || MEMBER_NAME || MEMBER_EMAIL || MEMBER_NICKNAME || MEMBER_TEL LIKE '%' || 'userTest43' || '%'; 

-- 관리자 회원 탈퇴하기
UPDATE "MEMBER" SET
MEMBER_DEL_YN = 'Y'
WHERE MEMBER_NO = 1;

-- 탈퇴하지 않은 회원 리스트 수 조회
SELECT COUNT(*) FROM "MEMBER"
WHERE MEMBER_DEL_YN = 'N';

-- (회원) 정보수정
UPDATE "MEMBER" SET 
MEMBER_PW = 'pass03',
MEMBER_TEL = '01011112222',
MEMBER_EMAIL = 'user03@kh.or.kr',
MEMBER_NICKNAME = '유쩌삼',
MEMBER_ADDRESS = '11111^^^서울시 숭인로 11길^^^1층'
WHERE MEMBER_NO = 2;

-- 회원 샘플 데이터 삽입(페이지네이션 테스트용)
BEGIN
	FOR I IN 1..2000 
	LOOP
		INSERT INTO MEMBER 
	VALUES(SEQ_MEMBER_NO.NEXTVAL, 'userTest'||SEQ_MEMBER_NO.CURRVAL, 'passTest'||SEQ_MEMBER_NO.CURRVAL, 'user02'||SEQ_MEMBER_NO.CURRVAL||'@kh.or.kr', '유저'||SEQ_MEMBER_NO.CURRVAL, '010-1111-3333', '유쩌이', 
			'88888^^^서울시 숭인로 11길^^^3층', NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
	END LOOP;
END;

COMMIT;

DELETE FROM MEMBER WHERE MEMBER_NO BETWEEN 61 AND 2039; -- MEMBER_NO 61~2039 데이터 삭제 구문

SELECT * FROM MEMBER;

-- 탈퇴하지 않았고, 검색 조건이 일치하는 회원리스트 수 조회
SELECT COUNT(*) FROM "MEMBER"
WHERE MEMBER_DEL_YN = 'N'
AND MEMBER_ID || MEMBER_NAME || MEMBER_EMAIL || MEMBER_NICKNAME || MEMBER_TEL LIKE '%' || '444' || '%';

-- 회원 리스트 조회 (검색)
SELECT MEMBER_NO, MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_TEL, MEMBER_NICKNAME, MEMBER_ADDRESS, MEMBER_PROFILE, 
TO_CHAR(MEMBER_ENROLL_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') AS MEMBER_ENROLL_DATE, ADMIN_YN, MEMBER_DEL_YN
FROM "MEMBER"
WHERE MEMBER_ID || MEMBER_NAME || MEMBER_EMAIL || MEMBER_NICKNAME || MEMBER_TEL LIKE '%' || '유쩌일' || '%';

-- updateAuthKey
SELECT * FROM "EMAIL_CHECK";

UPDATE "EMAIL_CHECK" SET
CHECK_KEY = #{authKey},
CHECK_DATE = SYSDATE
WHERE CHECK_EMAIL = #{email}

-- insertAuthKey
INSERT INTO "EMAIL_CHECK" VALUES(SEQ_CHECK_NO.NEXTVAL, #{authKey}, #{email}, DEFAULT)

-- checkAuthKey
SELECT COUNT(*) FROM "EMAIL_CHECK"
WHERE CHECK_EMAIL = #{email}
AND CHECK_KEY = #{inputKey}

-- 활동일지 등록하기
INSERT INTO ACTIVITY_LOG VALUES(SEQ_ACTIVITY_NO, #{memberNo}, #{rename}, #{activityContent}, DEFAULT);

INSERT INTO ACTIVITY_LOG VALUES(SEQ_ACTIVITY_NO.NEXTVAL, 1, '/dog1', '친구 강아지들과 즐겁게 산책했어요!', DEFAULT);

-- 활동일지 상세 조회하기
SELECT * FROM ACTIVITY_LOG WHERE ACTIVITY_NO = 91;

SELECT ACTIVITY_NO, MEMBER_NO, ACTIVITY_IMG, ACTIVITY_CONTENT, 
	   TO_CHAR(ACTIVITY_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') AS ACTIVITY_DATE
FROM ACTIVITY_LOG
WHERE ACTIVITY_NO = 91;

-- 활동일지 수정하기
UPDATE ACTIVITY_LOG SET
MEMBER_NO = #{memberNo},
ACTIVITY_IMG = #{activityImg},
ACTIVITY_CONTENT = #{activityContent},
ACTIVITY_DATE = SYSDATE
WHERE ACTIVITY_NO = #{activityNo};

SELECT *
FROM ACTIVITY_LOG;

-- 활동일지 삭제하기
DELETE FROM ACTIVITY_LOG WHERE ACTIVITY_NO = #{activityNo};



