/*
PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문을 작성해주세요.
이때 컬럼명은 MAX_PRICE로 지정해주세요.
*/

-- 코드를 입력하세요
SELECT MAX(PRICE) AS MAX_PRICE FROM PRODUCT

/*
동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물의 ID를 조회하는 SQL 문을 작성해주세요. 
단, ID는 오름차순 정렬되어야 합니다.
*/

 -- 코드를 입력하세요
SELECT ANIMAL_ID FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;