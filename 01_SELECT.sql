/* SELECT (DML 또는 DQL) : 조회
 * 
 * - 데이터를 조회(SELECT)하면 조건에 맞는 행들이 조회됨.
 * 이 때, 조회된 행들의 집합을 "RESULT SET" (조회 결과의 집합) 이라고 한다.
 * 
 * - RESULT SET은 0개 이상의 행을 포함할 수 있다.
 * 왜 0개? 조건에 맞는 행이 없을 수도 있어서.
 * 
 */

-- [작성법]
-- SELECT 컬럼명 FROM 테이블명;
--> 어떤 테이블의 특정 컬럼을 조회하겠다.

SELECT * FROM EMPLOYEE;
-- '*' : all, 모든, 전부
--> EMPLOYEE 테이블의 모든 컬럼을 조회하겠다.

-- 사번, 직원이름, 휴대전화번호 조회
SELECT EMP_ID, EMP_NAME, PHONE FROM EMPLOYEE;

-----------------------------------------------------------------------------

-- <컬럼 값 산술 연산>
-- 컬럼 값 : 테이블 내 한 칸 ( == 한 셀) 에 작성된 값 (DATA)

-- EMPLOYEE 테이블에서 모든 사원의 사번, 이름, 급여, 연봉 조회
-- 급여가 숫자 타입이므로 산술 연산이 가능 -> 연봉
-- RESULT SET의 컬럼은 작성한 컬럼명 그대로 결과출력
SELECT EMP_ID, EMP_NAME, SALARY, SALARY * 12 FROM EMPLOYEE;

SELECT EMP_NAME + 10 FROM EMPLOYEE;
-- ORA-01722 : 수치가 부적합합니다.
-- 산술연산은 숫자(NUMBER 타입)만 가능하다!


SELECT EMP_ID + 10 FROM EMPLOYEE;


SELECT '같음'
FROM DUAL
WHERE 1 = '1';

----------------------------------------------------------------------------

-- 날짜(DATE) 타입 조회

-- EMPLOYEE 테이블에서 이름, 입사일, 오늘 날짜 조회
SELECT EMP_NAME, HIRE_DATE, SYSDATE FROM EMPLOYEE;

-- 2023-08-03 12:05:21.000
-- SYSDATE : 시스템상의 현재 시간(날짜)을 나타내는 상수

SELECT SYSDATE FROM DUAL;
-- DUAL(DUmy tAbLe) 테이블 : 가짜 테이블(임시 조회용 테이블)


-- 날짜 + 산술연산 (+ , -)
SELECT SYSDATE -1, SYSDATE, SYSDATE + 1
FROM DUAL;
-- 날짜에 +/- 연산 시 일 단위로 계산이 진행됨

---------------------------------------------------------------------------

-- <컬럼 별칭 지정>

/* 컬럼명 AS 별칭 : 별칭 띄어쓰기 x, 특수문자 x, 문자만 o
 * 
 * 컬럼명 AS "별칭" : 별칭 띄어쓰기 o, 특수문자 o, 문자 o
 * 
 * AS 생략 가능
 * 
 */

SELECT SYSDATE -1 "하루 전", SYSDATE AS 현재시간, SYSDATE + 1 내일
FROM DUAL;

---------------------------------------------------------------------------

-- JAVA 리터럴 : 값 자체를 의미

-- DB 리터럴 : 임의로 지정한 값을 기존 테이블에 존재하는 값처럼 사용하는 것
--> (필수) DB의 리터럴 표기법은 '' 홑따옴표

SELECT EMP_NAME, SALARY, '원 입니다' FROM EMPLOYEE;


---------------------------------------------------------------------------

-- DISTINCT : 조회 시 컬럼에 포함된 중복 값을 한 번만 표기
-- 주의사항 1) DISTINCT 구문은 SELECT 마다 딱 한번씩만 작성 가능
-- 주의사항 2) DISTINCT 구문은 SELECT 제일 앞에 작성되어야 한다.


SELECT DISTINCT DEPT_CODE, JOB_CODE FROM EMPLOYEE;

---------------------------------------------------------------------------


-- 3. SELECT 절 : SELECT 컬럼명
-- 1. FROM 절 : FROM 테이블명
-- 2. WHERE 절(조건절) : WHERE 컬럼명 연산자 값;
-- 4. ORDER BY 컬럼명 | 별칭 | 컬럼 순서 [ASC | DESC] [NULLS FIRST | LAST]

-- EMPLOYEE 테이블에서 급여가 3백만원 초과인 사원의
-- 사번, 이름, 급여, 부서코드를 조회

SELECT EMP_ID, EMP_NAME, SALARY, DEPT_CODE
FROM EMPLOYEE
WHERE SALARY > 3000000;


-- 비교 연산자 : >, <, >=, <=, = (같다), !=, <> (같지 않다)
-- 대입 연산자 :    :=   

-- EMPLOYEE 테이블에서 부서코드가 'D9'인 사원의
-- 사번, 이름, 부서코드, 직급코드를 조회

SELECT EMP_ID, EMP_NAME, DEPT_CODE, JOB_CODE
FROM EMPLOYEE
WHERE DEPT_CODE = 'D9';


---------------------------------------------------------------------------

-- 논리 연산자 (AND, OR)

-- EMPLOYEE 테이블에서 급여가 300만 미만 또는 500만 이상인 사원의
-- 사번, 이름, 급여, 전화번호 조회

SELECT EMP_ID, EMP_NAME, SALARY, PHONE
FROM EMPLOYEE
WHERE SALARY < 3000000 OR SALARY >= 5000000;


-- EMPLOYEE 테이블에서 급여가 300만 이상 500만 미만인 사원의
-- 사번, 이름, 급여, 전화번호 조회

SELECT EMP_ID, EMP_NAME, SALARY, PHONE
FROM EMPLOYEE
WHERE SALARY >= 3000000 AND SALARY < 5000000;

-- BETWEEN A AND B : A 이상 B 이하

-- 300만 이상, 600만 이하
SELECT EMP_ID, EMP_NAME, SALARY, PHONE
FROM EMPLOYEE
WHERE SALARY BETWEEN 3000000 AND 6000000;

-- NOT 연산자 사용 가능!
SELECT EMP_ID, EMP_NAME, SALARY, PHONE
FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 3000000 AND 6000000;


-- 날짜 (DATE) 에 BETWEEN 이용하기
-- EMPLOYEE 테이블에서 입사일이 1990-01-01~1999-12-31 사이인 직원의
-- 이름, 입사일 조회

SELECT EMP_NAME, HIRE_DATE
FROM EMPLOYEE
WHERE HIRE_DATE BETWEEN '1990-01-01' AND '1999-12-31';











