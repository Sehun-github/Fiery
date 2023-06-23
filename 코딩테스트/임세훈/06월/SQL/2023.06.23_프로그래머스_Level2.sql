/*
문제 - 가격대 별 상품 개수 구하기
PRODUCT 테이블에서 만원 단위의 가격대 별로 상품 개수를 출력하는 SQL 문을 작성해주세요. 
이때 컬럼명은 각각 컬럼명은 PRICE_GROUP, PRODUCTS로 지정해주시고 가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시해주세요. 
결과는 가격대를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT CASE 
WHEN PRICE<20000 THEN 10000
WHEN PRICE<30000 THEN 20000
WHEN PRICE<40000 THEN 30000
WHEN PRICE<50000 THEN 40000
WHEN PRICE<60000 THEN 50000
WHEN PRICE<70000 THEN 60000
WHEN PRICE<80000 THEN 70000
WHEN PRICE<90000 THEN 80000
END
AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP;


/*
문제 - 3월에 태어난 여성 회원 목록 출력하기
MEMBER_PROFILE 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성해주세요.
 이때 전화번호가 NULL인 경우는 출력대상에서 제외시켜 주시고, 결과는 회원ID를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT MEMBER_ID,MEMBER_NAME,GENDER,DATE_FORMAT(DATE_OF_BIRTH,'%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = '03' and TLNO IS NOT NULL and GENDER = 'w'
ORDER BY MEMBER_ID;


/*
문제 - 재구매가 일어난 상품과 회원 리스트 구하기
ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여, 
재구매한 회원 ID와 재구매한 상품 ID를 출력하는 SQL문을 작성해주세요. 
결과는 회원 ID를 기준으로 오름차순 정렬해주시고 회원 ID가 같다면 상품 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT USER_ID, PRODUCT_ID 
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >=2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;


/*
문제 - 자동차 평균 대여 기간 구하기
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 평균 대여 기간이 7일 이상인 자동차들의 자동차 ID와 평균 대여 기간(컬럼명: AVERAGE_DURATION) 리스트를 출력하는 SQL문을 작성해주세요. 
평균 대여 기간은 소수점 두번째 자리에서 반올림하고, 결과는 평균 대여 기간을 기준으로 내림차순 정렬해주시고, 
평균 대여 기간이 같으면 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT CAR_ID, ROUND(AVG(DATEDIFF(END_DATE,START_DATE)+1),1) AS AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION>=7
ORDER BY AVERAGE_DURATION DESC, CAR_ID DESC;