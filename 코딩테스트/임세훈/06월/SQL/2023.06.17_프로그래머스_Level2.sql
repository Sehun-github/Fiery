/*
문제 - 입양 시각 구하기(1)
보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요.
이때 결과는 시간대 순으로 정렬해야 합니다.
*/

-- 코드를 입력하세요
SELECT HOUR(DATETIME) AS HOUR, COUNT(HOUR(DATETIME)) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 and 19
GROUP BY HOUR
ORDER BY HOUR ASC;

/*
문제 - 카테고리 별 상품 개수 구하기
PRODUCT 테이블에서 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력하는 SQL문을 작성해주세요. 
결과는 상품 카테고리 코드를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT LEFT(PRODUCT_CODE,2) AS CATEGORY, COUNT(PRODUCT_CODE) AS PRODUCTS 
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;