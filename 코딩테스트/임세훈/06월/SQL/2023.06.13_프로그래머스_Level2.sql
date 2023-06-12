/*
문제 - 조건에 부합하는 중고거래 상태 조회하기
USED_GOODS_BOARD 테이블에서 2022년 10월 5일에 등록된 중고거래 게시물의 게시글 ID, 작성자 ID, 게시글 제목, 가격, 거래상태를 조회하는 SQL문을 작성해주세요. 
거래상태가 SALE 이면 판매중, RESERVED이면 예약중, DONE이면 거래완료 분류하여 출력해주시고, 
결과는 게시글 ID를 기준으로 내림차순 정렬해주세요.
*/


-- 코드를 입력하세요_1
SELECT BOARD_ID,WRITER_ID,TITLE,PRICE, 
IF(STATUS='SALE','판매중',IF(STATUS='RESERVED','예약중','거래완료')) AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE,'%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC;

-- 코드를 입력하세요_2
SELECT BOARD_ID,WRITER_ID,TITLE,PRICE, 
CASE 
WHEN STATUS='SALE' THEN '판매중'
WHEN STATUS='RESERVED' THEN '예약중'
ELSE '거래완료'
END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE,'%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC;

/*
문제 - 동명 동물 수 찾기
동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요.
이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.
*/

-- 코드를 입력하세요
SELECT NAME, COUNT(NAME) AS COUNT 
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME)>=2
ORDER BY NAME;