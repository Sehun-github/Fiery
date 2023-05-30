/*
동물 보호소에 들어온 동물 중 아픈 동물1의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 
이때 결과는 아이디 순으로 조회해주세요.
아픈 동물 - INTAKE_CONDITION이 Sick 인 경우를 뜻함
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID,NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION = "Sick"
ORDER BY ANIMAL_ID;

/*
FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성해주세요. 
이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 
결과는 창고 ID를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT WAREHOUSE_ID,WAREHOUSE_NAME,ADDRESS,IFNULL(FREEZER_YN,'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE WAREHOUSE_NAME LIKE '%경기%'
ORDER BY WAREHOUSE_ID ASC;