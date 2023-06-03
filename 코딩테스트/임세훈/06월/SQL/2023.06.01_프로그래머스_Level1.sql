/* 
문제 - 흉부외과 또는 일반외과 의사 목록 출력하기
DOCTOR 테이블에서 진료과가 흉부외과(CS)이거나 일반외과(GS)인 의사의 이름, 의사ID, 진료과, 고용일자를 조회하는 SQL문을 작성해주세요. 
이때 결과는 고용일자를 기준으로 내림차순 정렬하고, 고용일자가 같다면 이름을 기준으로 오름차순 정렬해주세요.

*/

-- 코드를 입력하세요
SELECT DR_NAME, DR_ID, MCDP_CD, Date_FORMAT(HIRE_YMD,'%Y-%m-%d')
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC


/*
문제 -  12세 이하인 여자 환자 목록 출력하기
PATIENT 테이블에서 12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회하는 SQL문을 작성해주세요.
이때 전화번호가 없는 경우, 'NONE'으로 출력시켜 주시고 결
과는 나이를 기준으로 내림차순 정렬하고, 나이 같다면 환자이름을 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO,'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12 and GEND_CD	 = 'W'
ORDER BY AGE DESC, PT_NAME ASC;
