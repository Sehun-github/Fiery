/*
문제 - 이름에 el이 들어가는 동물 찾기
보호소에 돌아가신 할머니가 기르던 개를 찾는 사람이 찾아왔습니다. 
이 사람이 말하길 할머니가 기르던 개는 이름에 'el'이 들어간다고 합니다. 
동물 보호소에 들어온 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 
이때 결과는 이름 순으로 조회해주세요. 단, 이름의 대소문자는 구분하지 않습니다.
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%el%' AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;

/*
문제 - NULL 처리하기
입양 게시판에 동물 정보를 게시하려 합니다. 
동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 
이때 프로그래밍을 모르는 사람들은 NULL이라는 기호를 모르기 때문에, 이름이 없는 동물의 이름은 "No name"으로 표시해 주세요.
*/

-- 코드를 입력하세요
SELECT ANIMAL_TYPE, IFNULL(NAME,"No name") AS NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;