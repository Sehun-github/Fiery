/*
문제 - 동물 수 구하기
동물 보호소에 동물이 몇 마리 들어왔는지 조회하는 SQL 문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT COUNT(*) AS count FROM ANIMAL_INS;


/*
문제 - 중복 제거하기
동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 
이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.
*/

-- 코드를 입력하세요
SELECT COUNT(DISTINCT NAME) AS count FROM ANIMAL_INS;