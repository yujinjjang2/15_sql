
--------------- 상세페이지 관련 ---------------

-- CONTENT TABLE 조회
SELECT * FROM CONTENT ORDER BY CONTENT_NO;

-- 서울 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '여의도 한강공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/여의도한강공원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '남산타워', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/남산타워.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '서울식물원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/서울식물원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '올림픽공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/올림픽공원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '광화문', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/광화문.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '전쟁기념관', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/전쟁기념관.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '국립중앙박물관', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/국립중앙박물관.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '청계천', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/청계천.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '북촌 한옥마을', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/북촌한옥마을.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '노량진 수산시장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/노량진수산시장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '남대문', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/남대문.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'seo', '롯데월드', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/seoul/롯데월드.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 경기/인천 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '파라다이스 씨메르', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/파라다이스씨메르.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '캐리비안 베이', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/캐리비안베이.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '한국민속촌', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/한국민속촌.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '광명 동굴', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/광명동굴.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '에버랜드', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/에버랜드.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '인천 차이나타운', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/인천차이나타운.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '인천대공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/인천대공원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gyeinc', '송도 센트럴파크', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeonggiIncheon/송도센트럴파크.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 강원 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '정동진 모래시계공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/정동진모래시계공원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '설악산', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/설악산.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '대관령 하늘목장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/대관령하늘목장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '영금정', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/영금정.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '낙산사', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/낙산사.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '삼척 레일바이크', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/삼척레일바이크.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '휘닉스 평창 리조트', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/휘닉스평창리조트.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gan', '죽도해변', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gangwon/죽도해변.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 충청 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '탑평리', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/탑평리.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '대청호', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/대청호.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '청남대', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/청남대.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '만리포 해수욕장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/만리포해수욕장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '꽃지 해수욕장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/꽃지해수욕장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '대전 엑스포', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/대전엑스포.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '보은 법주사', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/보은법주사.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'chu', '세종 호수공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/chungcheong/세종호수공원.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 전라 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '여수해상케이블카', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/여수해상케이블카.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '오동도', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/오동도.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '여수 아쿠아플라넷', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/여수아쿠아플라넷.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '섬진강 기차마을', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/섬진강기차마을.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '대한다원보성녹차밭', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/대한다원보성녹차밭.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '정남진 편백숲 우드랜드', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/정남진편백숲우드랜드.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '광주호 호수생태원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/광주호호수생태원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jeo', '이사부크루즈 국동유람선', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeolla/이사부크루즈국동유람선.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 경상 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '해동용궁사', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/해동용궁사.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '포항 스페이스 워크', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/포항스페이스워크.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '감천 문화마을', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/감천문화마을.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '호미곶 해맞이광장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/호미곶해맞이광장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '해운대 블루라인파크', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/해운대블루라인파크.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '거제도', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/거제도.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '동궁과 월지', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/동궁과월지.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'gye', '태화강 국가정원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/gyeongsang/태화강국가정원.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 제주 게시물 삽입
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '오설록 티뮤지엄', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/오설록티뮤지엄.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '동백포레스트', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/동백포레스트.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '협재해수욕장', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/협재해수욕장.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '만장굴', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/만장굴.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '휴애리자연생활공원', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/휴애리자연생활공원.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '9.81 파크 제주', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/9.81파크제주.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '비밀의숲', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/비밀의숲.png');
INSERT INTO CONTENT VALUES (SEQ_CONTENT_NO.NEXTVAL, 'jej', '감따남', '주소', NULL, NULL, NULL, NULL, DEFAULT, '/resources/img/content/jeju/감따남.png');

-- COMMIT 구문
COMMIT;

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 지역코드별 CONTENT TABLE 조회
SELECT CONTENT_NO, AREA_CODE, TRAVEL_NAME, PLACE_ADDRESS, AGE_CODE, SEASON_CODE, MEMBER_CODE, THEME_CODE, CONTENT_DEL_FL, CONTENT_IMG
FROM CONTENT
WHERE AREA_CODE = 'seo';








--------------- 공지사항 관련 ---------------

-- NOTICE_BOARD TABLE 조회
SELECT * FROM NOTICE_BOARD;

-- NOTICE_BOARD TABLE 데이터 삽입
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 1', '공지사항 내용 1', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 2', '공지사항 내용 2', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 3', '공지사항 내용 3', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 4', '공지사항 내용 4', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 5', '공지사항 내용 5', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 6', '공지사항 내용 6', DEFAULT, DEFAULT);
INSERT INTO NOTICE_BOARD VALUES (SEQ_NOTICE_NO.NEXTVAL, '공지사항 제목 7', '공지사항 내용 7', DEFAULT, DEFAULT);

-- COMMIT 구문
COMMIT;

-- NOTICE_BOARD TABLE 조회
SELECT NOTICE_NO, NOTICE_TITLE, NOTICE_DETAIL, TO_CHAR(NOTICE_UPLOAD_DATE, 'YYYY. MM. DD') NOTICE_UPLOAD_DATE, NOTICE_DEL_FL
FROM NOTICE_BOARD
WHERE NOTICE_DEL_FL = 'N'
ORDER BY NOTICE_NO DESC;

-- NOTICE_BOARD TABLE 한 행 조회
SELECT NOTICE_NO, NOTICE_TITLE, NOTICE_DETAIL, TO_CHAR(NOTICE_UPLOAD_DATE, 'YYYY. MM. DD') NOTICE_UPLOAD_DATE, NOTICE_DEL_FL
FROM NOTICE_BOARD
WHERE NOTICE_DEL_FL = 'N' 
AND NOTICE_NO = 1;


-- 이전글 가져오기, 다음글 가져오기 
SELECT 
	A.NOTICE_NO, A.NOTICE_TITLE, A.NOTICE_DETAIL, A.NOTICE_UPLOAD_DATE, A.NOTICE_DEL_FL, A.PRE_NOTICE_NO, A.PRE_NOTICE_TITLE, A.NEXT_NOTICE_NO, A.NEXT_NOTICE_TITLE
FROM 
	(
		SELECT 
			NOTICE_NO, NOTICE_TITLE, NOTICE_DETAIL, TO_CHAR(NOTICE_UPLOAD_DATE, 'YYYY. MM. DD') NOTICE_UPLOAD_DATE, NOTICE_DEL_FL
			, LAG(NOTICE_NO) OVER (ORDER BY NOTICE_NO) PRE_NOTICE_NO
			, LAG(NOTICE_TITLE) OVER (ORDER BY NOTICE_NO) PRE_NOTICE_TITLE
			, LEAD(NOTICE_NO) OVER (ORDER BY NOTICE_NO) NEXT_NOTICE_NO
			, LEAD(NOTICE_TITLE) OVER (ORDER BY NOTICE_NO) NEXT_NOTICE_TITLE
		FROM NOTICE_BOARD
		ORDER BY NOTICE_NO
	) A
WHERE A.NOTICE_NO = '2'

-- 공지사항 INSERT 
INSERT INTO NOTICE_BOARD VALUES(SEQ_NOTICE_NO.NEXTVAL, #{noticeTitle}, #{noticeDetail}, DEFAULT, DEFAULT)

-- 공지사항 UPDATE 
UPDATE NOTICE_BOARD SET 
NOTICE_TITLE = 'aaa',
NOTICE_DETAIL = 'aaaa',
NOTICE_UPLOAD_DATE = DEFAULT
WHERE NOTICE_NO = 4;

-- COMMIT 구문
COMMIT;

-- 공지사항 DELETE 
UPDATE NOTICE_BOARD SET 
NOTICE_DEL_FL = 'Y'
WHERE NOTICE_NO = #{noticeNo}



--------------- 공지사항 대량 데이터 INSERT 관련 ---------------

SELECT * FROM NOTICE_BOARD ORDER BY NOTICE_NO;

DELETE FROM NOTICE_BOARD;

COMMIT;

DELETE TABLE NOTICE_BOARD;

DROP SEQUENCE SEQ_NOTICE_NO;

CREATE SEQUENCE SEQ_NOTICE_NO INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999999999999999999999 NOCYCLE NOCACHE NOORDER;

BEGIN
	FOR I IN 1..2000 
	LOOP
		INSERT INTO NOTICE_BOARD
		VALUES( SEQ_NOTICE_NO.NEXTVAL,
		SEQ_NOTICE_NO.CURRVAL || '번째 공지사항 제목',
		SEQ_NOTICE_NO.CURRVAL || '번째 공지사항 내용 입니다.',
		DEFAULT,DEFAULT
		);
	END LOOP;
END;

-- 공지사항 최근 게시글 5개만 조회
SELECT NOTICE_NO, NOTICE_TITLE, NOTICE_DETAIL, TO_CHAR(NOTICE_UPLOAD_DATE, 'YY. MM. DD') NOTICE_UPLOAD_DATE, NOTICE_DEL_FL
FROM
	(
	SELECT NOTICE_NO, NOTICE_TITLE, NOTICE_DETAIL, NOTICE_UPLOAD_DATE, NOTICE_DEL_FL
	FROM "NOTICE_BOARD"
	ORDER BY NOTICE_NO DESC
	)
WHERE NOTICE_DEL_FL = 'N'
AND ROWNUM <= 5;









