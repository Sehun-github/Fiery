/* 
문제 -  조건에 맞는 도서 리스트 출력하기
BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성해주세요.
결과는 출판일을 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT BOOK_ID, Date_Format(PUBLISHED_DATE,"%Y-%m-%d") AS PUBLISHED_DATE
FROM BOOK
WHERE YEAR(PUBLISHED_DATE) = '2021' and CATEGORY = '인문'
ORDER BY PUBLISHED_DATE;

/*
문제 -  평균 일일 대여 요금 구하기
CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요. 
이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.
*/

-- 코드를 입력하세요
SELECT ROUND(AVG(DAILY_FEE),0) AS AVERAGE_FEE 
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';