-- 1. 학생이름과 주소지를 표시하시오. 단, 출력 헤더는 "학생 이름", "주소지"로 하고, 정렬은 이름으로 오름차순 표시하도록 한다.
SELECT 
	STUDENT_NAME "학생 이름",
	STUDENT_ADDRESS 주소지
FROM 
	TB_STUDENT
ORDER BY 1;

-- 2. 휴학중인 학생들의 이름과 주민번호를 나이가 적은 순서로 화면에 출력하시오.
SELECT 
	STUDENT_NAME,
	STUDENT_SSN 
FROM 
	TB_STUDENT
WHERE 
	ABSENCE_YN = 'Y'
ORDER BY 
	STUDENT_SSN DESC;
	
-- 3. 주소지가 강원도나 경기도인 학생들 중 1900 년대 학번을 가진 학생들의 이름과 학번, 주소를 이름의 오름차순으로 화면에 출력하시오.
--    단, 출력헤더에는 "학생이름","학번","거주지 주소" 가 출력되도록 한다.
SELECT 
	STUDENT_NAME 학생이름,
	STUDENT_NO 학번,
	STUDENT_ADDRESS "거주지 주소"
FROM 
	TB_STUDENT
WHERE (STUDENT_ADDRESS LIKE '%강원%'
   OR STUDENT_ADDRESS LIKE '%경기%')
  AND SUBSTR(STUDENT_NO, 1, 1) = '9'
ORDER BY 1;  

-- 4. 현재 법학과 교수 중 가장 나이가 많은 사람부터 이름을 확인할 수 있는 SQL 문장을 작성하시오.
--    (법학과의 '학과코드'는 학과 테이블(TB_DEPARTMENT)을 조회해서 찾아내도록 하자)
SELECT 
	PROFESSOR_NAME,
	PROFESSOR_SSN
FROM
	TB_PROFESSOR
WHERE
	DEPARTMENT_NO = '005'
ORDER BY
	PROFESSOR_SSN;

-- 5. 2004년 2 학기에 'C3118100' 과목을 수강한 학생들의 학점을 조회하려고 한다.
--    학점이 높은 학생부터 표시하고, 학점이 같으면 학번이 낮은 학생부터 표시하는 구문을 작성해보시오.

-- 어째 하다보니 되었다????????????
SELECT
	STUDENT_NO,
	TO_CHAR(POINT, '0.00')
FROM
	TB_GRADE
WHERE TERM_NO = '200402'
  AND CLASS_NO = 'C3118100'
ORDER BY
	POINT DESC;

-- 6. 학생 번호, 학생 이름, 학과 이름을 학생 이름 오름차순 정렬하여 출력하는 SQL 문을 작성하시오.

-- 학생 이름 오름차순이라면서 결과가 왜저래????????
SELECT 
	A.STUDENT_NO,
	A.STUDENT_NAME,
	B.DEPARTMENT_NAME
FROM 
	TB_STUDENT A,
	TB_DEPARTMENT B
WHERE 1 = 1
  AND A.DEPARTMENT_NO = B.DEPARTMENT_NO;
 
--SELECT 
--	A.STUDENT_NO,
--	A.STUDENT_NAME,
--	B.DEPARTMENT_NAME
--FROM
--	TB_STUDENT A
--	INNER JOIN
--TB_DEPARTMENT B ON A.DEPARTMENT_NO = B.DEPARTMENT_NO; 
 
-- 7. 춘 기술대학교의 과목 이름과 과목의 학과 이름을 출력하는 SQL 문장을 작성하시오.
SELECT 
	A.CLASS_NAME,
	B.DEPARTMENT_NAME
FROM
	TB_CLASS A,
	TB_DEPARTMENT B
WHERE 1 = 1
  AND A.DEPARTMENT_NO = B.DEPARTMENT_NO;
 
-- 8. 과목별 교수 이름을 찾으려고 한다. 과목 이름과 교수 이름을 출력하는 SQL 문을 작성하시오.

-- 뭔소리???? 
SELECT 
	A.CLASS_NAME,
	B.PROFESSOR_NAME
FROM
	TB_CLASS A,
	TB_PROFESSOR B,
	TB_CLASS_PROFESSOR C
WHERE 1 = 1
  AND A.CLASS_NO = C.CLASS_NO
  AND C.PROFESSOR_NO = B.PROFESSOR_NO;
	
-- 9. 8 번의 결과 중 '인문사회' 계열에 속한 과목의 교수 이름을 찾으려고 한다.
--    이에 해당하는 과목 이름과 교수 이름을 출력하는 SQL 문을 작성하시오.
SELECT 
	A.CLASS_NAME,
	B.PROFESSOR_NAME
FROM
	TB_CLASS A,
	TB_PROFESSOR B,
	TB_CLASS_PROFESSOR C,
	TB_DEPARTMENT D
WHERE 1 = 1
  AND A.CLASS_NO = C.CLASS_NO
  AND C.PROFESSOR_NO = B.PROFESSOR_NO
  AND A.DEPARTMENT_NO = D.DEPARTMENT_NO
  AND D.CATEGORY = '인문사회';
 
-- 10. '음악학과' 학생들의 평점을 구하려고 한다. 음악학과 학생들의 "학번", "학생 이름", "전체 평점"을 출력하는 SQL 문장을 작성하시오.
--    (단, 평점은 소수점 1자리까지만 반올림하여 표시한다.)
SELECT 
	A.STUDENT_NO 학번,
	A.STUDENT_NAME "학생 이름",
	ROUND(AVG(B.POINT), 1) "전체 평점"
FROM
	TB_STUDENT A,
	TB_GRADE B
WHERE 1 = 1
  AND A.STUDENT_NO = B.STUDENT_NO
  AND A.DEPARTMENT_NO = '059'
GROUP BY 
	A.STUDENT_NO,
	A.STUDENT_NAME
ORDER BY 1;

-- 11. 학번이 A313047 인 학생이 학교에 나오고 있지 않다. 지도 교수에게 내용을 전달하기 위한 학과 이름, 학생 이름과 지도 교수 이름이 필요하다.
--     이때 사용할 SQL 문을 작성하시오. 단, 출력헤더는 "학과이름", "학생이름", "지도교수이름" 으로 출력되도록 한다.
SELECT 
	B.DEPARTMENT_NAME 학과이름,
	A.STUDENT_NAME 학생이름,
	C.PROFESSOR_NAME 지도교수이름
FROM 
	TB_STUDENT A,
	TB_DEPARTMENT B,
	TB_PROFESSOR C
WHERE 1 = 1
  AND A.STUDENT_NO = 'A313047'
  AND A.DEPARTMENT_NO = B.DEPARTMENT_NO
  AND A.COACH_PROFESSOR_NO = C.PROFESSOR_NO;
 
-- 12. 2007 년도에 '인간관계론' 과목을 수강한 학생을 찾아 학생이름과 수강학기를 표시하는 SQL 문장을 작성하시오.
SELECT 
	A.STUDENT_NAME,
	B.TERM_NO "TERM_NAME"
FROM
	TB_STUDENT A,
	TB_GRADE B,
	TB_CLASS C
WHERE 1 = 1
  AND SUBSTR(TERM_NO, 1, 4) = '2007'
  AND A.STUDENT_NO = B.STUDENT_NO
  AND B.CLASS_NO = C.CLASS_NO
  AND C.CLASS_NO = 'C2604100'
ORDER BY 1;

-- 13. 예체능 계열 과목 중 과목 담당교수를 한 명도 배정받지 못한 과목을 찾아 그 과목 이름과 학과 이름을 출력하는 SQL 문장을 작성하시오.














