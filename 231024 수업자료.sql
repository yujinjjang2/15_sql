-- 댓글 목록 조회
SELECT COMMENT_NO, COMMENT_CONTENT,
TO_CHAR(C_CREATE_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') C_CREATE_DATE,
BOARD_NO, MEMBER_NO, MEMBER_NICKNAME, PROFILE_IMG, PARENT_NO, COMMENT_DEL_FL
FROM "COMMENT"
JOIN MEMBER USING(MEMBER_NO)
WHERE BOARD_NO = 1998
ORDER BY COMMENT_NO
;


SELECT * FROM "BOARD"
ORDER BY BOARD_NO DESC;




INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '부모 댓글 1', DEFAULT, DEFAULT, 1998, 2, NULL);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '부모 댓글 2', DEFAULT, DEFAULT, 1998, 2, NULL);


--  만약 INSERT 한 댓글  넘버가 1002 ,1003이라면 


INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식 댓글 1-1', DEFAULT, DEFAULT, 1998, 2, 1001);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식 댓글 1-2', DEFAULT, DEFAULT, 1998, 2, 1001);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식 댓글 1-3', DEFAULT, DEFAULT, 1998, 2, 1001);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식 댓글 2-1', DEFAULT, DEFAULT, 1998, 2, 1002);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식 댓글 2-2', DEFAULT, DEFAULT, 1998, 2, 1002);
INSERT INTO "COMMENT"									-- 게시글, 회원
VALUES(SEQ_COMMENT_NO.NEXTVAL, '자식의 자식 댓글 2-1-1', DEFAULT, DEFAULT, 1998, 2, 1006);
COMMIT;


------------ *** 계층이 나눠진 상태로 조회하는 쿼리 == 계층형 쿼리 *** ------------
-- 부모댓글 2
  -- 자식댓글 2-1
    -- 자식의 자식댓글 2-1-1

-- 부모 1
  -- 자식 1-1
  -- 자식 1-2
  -- 자식 1-3
-- 부모 2
  -- 자식 2-1
    -- 자식의 자식 2-1-1
  -- 자식 2-2

-----------------------------------------------------------------------------------


/* 계층형 쿼리(START WITH, CONNECT BY, ORDER SIBLINGS BY)
 * 
- 상위 타입과 하위 타입간의 관계를 계층식으로 표현할 수 있게하는 질의어(SELECT)
- START WITH : '상위 타입(최상위 부모)'으로 사용될 행을 지정 (서브쿼리로 지정 가능)
- CONNECT BY
-> '상위 타입과 하위 타입 사이의 관계'를 규정
-> PRIOR(이전의) 연산자와 같이 사용하여

현재 행 이전에 상위 타입 또는 하위 타입이 있을지 규정

1) 부모 -> 자식 계층 구조
CONNECT BY PRIOR 자식 컬럼 = 부모 컬럼

2) 자식 -> 부모 계층 구조
CONNECT BY PRIOR 부모 컬럼 = 자식 컬럼
- ORDER SIBLINGS BY : '계층 구조 정렬' == 형제,자매 순서를 나타내는 것

** 계층형 쿼리가 적용 SELECT 해석 순서 **
5 : SELECT
1 : FROM (+JOIN)
4 : WHERE
2 : START WITH
3 : CONNECT BY
6 : ORDER SIBLINGS BY

- 'WHERE절이 계층형 쿼리보다 해석 순서가 늦기' 때문에
'먼저 조건을 반영하고 싶은 경우 FROM절 서브쿼리(인라인뷰)'를 이용        *** 인라인뷰? 서브쿼리를 만들어 하나의 테이블처럼 사용하는 것
* */


-- 댓글 목록 조회 (계층형 쿼리 적용)
SELECT LEVEL, C.* FROM
	(SELECT COMMENT_NO, COMMENT_CONTENT,
	TO_CHAR(C_CREATE_DATE, 'YYYY"년" MM"월" DD"일" HH24"시" MI"분" SS"초"') C_CREATE_DATE,
	BOARD_NO, MEMBER_NO, MEMBER_NICKNAME, PROFILE_IMG, PARENT_NO, COMMENT_DEL_FL
	FROM "COMMENT"
	JOIN MEMBER USING(MEMBER_NO)
	WHERE BOARD_NO = 1998) C
WHERE COMMENT_DEL_FL = 'N'
START WITH PARENT_NO IS NULL
CONNECT BY PRIOR COMMENT_NO = PARENT_NO
ORDER SIBLINGS BY COMMENT_NO
;









--------------------- 과제 ---------------------

SELECT * FROM "COMMENT";

-- 댓글 목록 조회
SELECT COMMENT_NO, COMMENT_CONTENT, TO_CHAR(C_CREATE_DATE, 'YYYY-MM-DD') C_CREATE_DATE, COMMENT_DEL_FL, BOARD_NO, MEMBER_NO, PARENT_NO
FROM "COMMENT"
WHERE BOARD_NO = ;

-- 댓글 삽입
INSERT INTO "COMMENT" VALUES(SEQ_COMMENT_NO.NEXTVAL, #{commentContent}, DEFAULT, DEFAULT, #{boardNo}, #{memberNo})
















