/*
상위 n개 레코드
동물 보호소에 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT NAME FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;

/*
조건에 맞는 회원수 구하기
USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT COUNT(*) AS USERS FROM USER_INFO
WHERE AGE BETWEEN 20 and 29
AND YEAR(JOINED) = 2021;