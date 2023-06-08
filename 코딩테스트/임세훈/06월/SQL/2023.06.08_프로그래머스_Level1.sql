/*
문제 - 조건에 부합하는 중고거래 댓글 조회하기
USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 
2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 
결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 
댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, Date_Format(B.CREATED_DATE,'%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD A
JOIN USED_GOODS_REPLY B ON A.BOARD_ID=B.BOARD_ID
WHERE YEAR(A.CREATED_DATE) = "2022" AND MONTH(A.CREATED_DATE) = "10"
ORDER BY B.CREATED_DATE ASC, A.TITLE ASC;

/*
문제 - 특정 옵션이 포함된 자동차 리스트 구하기
CAR_RENTAL_COMPANY_CAR 테이블에서 '네비게이션' 옵션이 포함된 자동차 리스트를 출력하는 SQL문을 작성해주세요. 
결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT * FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%네비게이션%'
ORDER BY CAR_ID DESC;