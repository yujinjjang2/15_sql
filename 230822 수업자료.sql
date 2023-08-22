SELECT * FROM MEMBER;

DELETE FROM MEMBER WHERE MEMBER_NO = 5;

UPDATE MEMBER SET 
UNREGISTER_FL = 'Y'
WHERE MEMBER_PW = ?

SELECT * FROM BOARD;

SELECT * FROM "COMMENT";

SELECT BOARD.BOARD_NO, BOARD_TITLE, BOARD_CONTENT, TO_CHAR(BOARD.CREATE_DT, 'YYYYMMDD') CREATE_DT, READ_COUNT, BOARD.DELETE_FL, BOARD.MEMBER_NO,
		COMMENT_NO, COMMENT_CONTENT, TO_CHAR("COMMENT".CREATE_DT, 'YYYYMMDD') CREATE_DT, "COMMENT".DELETE_FL, MEMBER.MEMBER_NO, "COMMENT".BOARD_NO    
FROM BOARD
LEFT JOIN "COMMENT" ON (BOARD.BOARD_NO = "COMMENT".BOARD_NO)
LEFT JOIN MEMBER ON (MEMBER.MEMBER_NO = BOARD.MEMBER_NO);

SELECT * FROM "COMMENT";

INSERT INTO BOARD VALUES(SEQ_BOARD_NO.NEXTVAL, ?, ?, DEFAULT, DEFAULT, DEFAULT, ?);


SELECT COUNT(*) FROM "MEMBER"
WHERE UNREGISTER_FL = 'N'
AND MEMBER_ID = 'user01';


INSERT INTO "MEMBER"
VALUES(SEQ_MEMBER_NO.NEXTVAL, ?, ?, ?, ?, DEFAULT, DEFAULT);

SELECT MEMBER_ID, MEMBER_NM,
DECODE(MEMBER_GENDER, 'M', '남', '여') 성별
FROM "MEMBER"
WHERE UNREGISTER_FL = 'N'
ORDER BY MEMBER_NO DESC;

SELECT * FROM "COMMENT";


-- 게시글 번호, 제목, 글쓴이, 생성일, 조회수, 댓글수 
SELECT BOARD_NO, BOARD_TITLE, MEMBER_NM, CREATE_DT, READ_COUNT,
	(SELECT COUNT(*) FROM "COMMENT" SUB
	WHERE SUB.BOARD_NO = MAIN.BOARD_NO
	AND DELETE_FL = 'N') COMMENT_COUNT
FROM "BOARD" MAIN
JOIN "MEMBER" USING(MEMBER_NO)
WHERE DELETE_FL = 'N'
ORDER BY BOARD_NO DESC;

SELECT BOARD_NO, BOARD_TITLE, BOARD_CONTENT, MEMBER_NO, MEMBER_NM,
READ_COUNT, CREATE_DT







