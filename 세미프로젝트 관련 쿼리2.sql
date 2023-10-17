SELECT * FROM CONTENT;

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

COMMIT;

SELECT CONTENT_NO, AREA_CODE, TRAVEL_NAME, PLACE_ADDRESS, AGE_CODE, SEASON_CODE, MEMBER_CODE, THEME_CODE, CONTENT_DEL_FL, CONTENT_IMG
FROM CONTENT
WHERE AREA_CODE = 'seo';
