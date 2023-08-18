--한줄주석
/* 범위주석
 * 
 * 
 * 
 * */



-- 새로운 사용자 계정 생성 (sys 계정으로 진행)
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER board_project IDENTIFIED BY board1234;

-- 사용자 계정 권한 부여 설정
GRANT RESOURCE, CONNECT TO board_project;

-- 객체가 생성될 수 있는 공간 할당량 지정
ALTER USER board_project DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;

