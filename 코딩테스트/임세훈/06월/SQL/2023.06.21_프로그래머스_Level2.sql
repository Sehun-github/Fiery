/*
문제 - 진료과별 총 예약 횟수 출력하기
APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 진료과코드 별로 조회하는 SQL문을 작성해주세요. 
이때, 컬럼명은 '진료과 코드', '5월예약건수'로 지정해주시고 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고,
 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT MCDP_CD AS '진료과코드', COUNT(MCDP_CD) AS '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m') = '2022-05'
GROUP BY MCDP_CD
ORDER BY COUNT(MCDP_CD) ASC, MCDP_CD ASC;

/*
문제 - 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 
이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT CAR_TYPE, COUNT(CAR_TYPE)
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' OR OPTIONS LIKE '%열선시트%'
OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE;