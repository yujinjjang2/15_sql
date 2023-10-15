INSERT INTO LOCATION VALUES ('SE', '서울');
INSERT INTO LOCATION (AREA_CODE, AREA) VALUES ('GW', '강원');

INSERT INTO CONTENT VALUES (1, 'SE', '여의도 한강공원', '주소', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (2, 'SE', '남산타워', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (3, 'SE', '서울식물원', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (4, 'SE', '올림픽공원', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (5, 'SE', '광화문', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (6, 'SE', '전쟁기념관', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (7, 'SE', '국립중앙박물관', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (8, 'SE', '청계천', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (9, 'SE', '북촌 한옥마을', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (10, 'SE', '노량진 수산시장', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (11, 'SE', '남대문', '주소1', NULL, NULL,NULL,NULL,default);
INSERT INTO CONTENT VALUES (12, 'SE', '롯데월드', '주소1', NULL, NULL,NULL,NULL,default);

INSERT INTO CONTENT_IMG VALUES (1, 1, '../../../resources/images/SEO/여의도한강공원.png', '여의도 한강공원', '여의도 한강공원');
INSERT INTO CONTENT_IMG VALUES (2, 2, '../../../resources/images/SEO/남산타워.png', '남산타워', '남산타워');
INSERT INTO CONTENT_IMG VALUES (3, 3, '../../../resources/images/SEO/서울식물원.png', '서울식물원', '서울식물원');
INSERT INTO CONTENT_IMG VALUES (4, 4, '../../../resources/images/SEO/올림픽공원.png', '올림픽공원', '올림픽공원');
INSERT INTO CONTENT_IMG VALUES (5, 5, '../../../resources/images/SEO/광화문.png', '광화문', '광화문');
INSERT INTO CONTENT_IMG VALUES (6, 6, '../../../resources/images/SEO/전쟁기념관.png', '전쟁기념관', '전쟁기념관');
INSERT INTO CONTENT_IMG VALUES (7, 7, '../../../resources/images/SEO/국립중앙박물관.png', '국립중앙박물관', '국립중앙박물관');
INSERT INTO CONTENT_IMG VALUES (8, 8, '../../../resources/images/SEO/청계천.png', '청계천', '청계천');
INSERT INTO CONTENT_IMG VALUES (9, 9, '../../../resources/images/SEO/북촌한옥마을.png', '북촌 한옥마을', '북촌 한옥마을');
INSERT INTO CONTENT_IMG VALUES (10, 10, '../../../resources/images/SEO/노량진수산시장.png', '노량진 수산시장', '노량진 수산시장');
INSERT INTO CONTENT_IMG VALUES (11, 11, '../../../resources/images/SEO/남대문.png', '남대문', '남대문');
INSERT INTO CONTENT_IMG VALUES (12, 12, '../../../resources/images/SEO/롯데월드.png', '롯데월드', '롯데월드');

DELETE CONTENT_IMG

COMMIT;

SELECT *
FROM CONTENT_IMG
ORDER BY CONTENT_NO 

SELECT T1.IMG_NO, T1.CONTENT_NO , T1.IMG_PATH , T1.IMG_RENAME , T1.IMG_NAME
FROM 
	CONTENT_IMG T1
	INNER JOIN CONTENT T2 ON (T1.CONTENT_NO = T2.CONTENT_NO )
WHERE T2.AREA_CODE = 'SE'
ORDER BY 
    T1.IMG_NO

