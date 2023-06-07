/*
문제 - 최댓값 구하기
가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.
*/
-- 코드를 입력하세요
SELECT DATETIME AS '시간' FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1;

-- 코드를 입력하세요
SELECT MAX(DATETIME) AS '시간' FROM ANIMAL_INS;

/*
문제 - 과일로 만든 아이스크림 고르기
상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT  A.FLAVOR FROM FIRST_HALF A, ICECREAM_INFO B
WHERE A.TOTAL_ORDER > 3000 and B.INGREDIENT_TYPE = 'fruit_based'
AND A.FLAVOR = B.FLAVOR
ORDER BY A.TOTAL_ORDER DESC;