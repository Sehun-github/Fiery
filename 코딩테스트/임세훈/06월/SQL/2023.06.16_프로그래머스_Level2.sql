/*
문제 - 중성화 여부 파악하기
보호소의 동물이 중성화되었는지 아닌지 파악하려 합니다. 중성화된 동물은 SEX_UPON_INTAKE 컬럼에 'Neutered' 또는 'Spayed'라는 단어가 들어있습니다.
 동물의 아이디와 이름, 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요. 
 이때 중성화가 되어있다면 'O', 아니라면 'X'라고 표시해주세요.
*/

-- 코드를 입력하세요
SELECT ANIMAL_ID,NAME,
IF(SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%','O','X')  AS '중성화'
FROM ANIMAL_INS;


/*
문제 - 고양이와 개는 몇 마리 있을까
동물 보호소에 들어온 동물 중 고양이와 개가 각각 몇 마리인지 조회하는 SQL문을 작성해주세요. 
이때 고양이를 개보다 먼저 조회해주세요.
*/

-- 코드를 입력하세요
SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY FIELD(ANIMAL_TYPE,'Cat','Dog');