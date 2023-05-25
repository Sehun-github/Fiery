/*
문제 - 여러 기준으로 정렬하기
동물 보호소에 들어온 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성해주세요.
단, 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저 보여줘야 합니다.
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME,DATETIME FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC, FIELD(ANIMAL_TYPE, "Cat", "Dog");

/*
문제 - 어린 동물 찾기
동물 보호소에 들어온 동물 중 젊은 동물의 아이디와 이름을 조회하는 SQL 문을 작성해주세요. 이때 결과는 아이디 순으로 조회해주세요.
INTAKE_CONDITION이 Aged가 아닌 경우를 뜻함 
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID;