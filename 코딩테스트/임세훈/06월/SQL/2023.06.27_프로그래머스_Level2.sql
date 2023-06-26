/*
문제 - 카테고리 별 도서 판매량 집계하기
2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT B.CATEGORY, SUM(BS.SALES) AS TOTAL_SALES
FROM BOOK B JOIN BOOK_SALES BS
ON B.BOOK_ID = BS.BOOK_ID
WHERE DATE_FORMAT(BS.SALES_DATE,"%Y-%m") = '2022-01'
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY ASC;

/*
문제 - 조건별로 분류하여 주문상태 출력하기
FOOD_ORDER 테이블에서 5월 1일을 기준으로 주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성해주세요.
출고여부는 5월 1일까지 출고완료로 이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력해주시고, 결과는 주문 ID를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, DATE_FORMAT(OUT_DATE,"%Y-%m-%d") AS OUT_DATE, 
CASE 
WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
WHEN OUT_DATE IS NULL THEN '출고미정'
ELSE '출고대기'
END AS 출고여부
FROM FOOD_ORDER
ORDER BY ORDER_ID ASC;

/*
USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 
결과는 총거래금액을 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT U.USER_ID, U.NICKNAME, SUM(B.PRICE) AS TOTAL_SALES
FROM USED_GOODS_BOARD B JOIN USED_GOODS_USER U
ON B.WRITER_ID = USER_ID
WHERE STATUS = 'DONE'
GROUP BY U.USER_ID
HAVING TOTAL_SALES>=700000
ORDER BY TOTAL_SALES ASC;
