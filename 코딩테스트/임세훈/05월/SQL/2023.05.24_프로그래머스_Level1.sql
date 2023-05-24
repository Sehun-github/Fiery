/*
나이 정보가 없는 회원 수 구하기
USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요. 
이때 컬럼명은 USERS로 지정해주세요.
*/
SELECT (COUNT(*) - COUNT(AGE)) AS USERS FROM USER_INFO;

/*
동물의 아이디와 이름
동물 보호소에 들어온 모든 동물의 아이디와 이름을 ANIMAL_ID순으로 조회하는 SQL문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID,NAME FROM ANIMAL_INS
ORDER BY ANIMAL_ID;