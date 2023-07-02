/*
문제 - 조건에 맞는 사용자 정보 조회하기
USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성해주세요. 
이때, 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력해주세요. 
결과는 회원 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT U.USER_ID, U.NICKNAME, 
CONCAT(U.CITY," ", U.STREET_ADDRESS1, " ",U.STREET_ADDRESS2) AS '전체주소', 
CONCAT(LEFT(U.TLNO,3),"-", MID(U.TLNO,4,4),"-", RIGHT(U.TLNO,4)) AS '전화번호'
FROM USED_GOODS_BOARD B JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
GROUP BY U.USER_ID
HAVING COUNT(U.USER_ID) >=3
ORDER BY U.USER_ID DESC;

/*
문제 - 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 
대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가하여 자동차 ID와 AVAILABILITY 리스트를 출력하는 SQL문을 작성해주세요. 
이때 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시해주시고 결과는 자동차 ID를 기준으로 내림차순 정렬해주세요.
*/

-- 코드를 입력하세요
SELECT CAR_ID, CASE
WHEN CAR_ID IN (SELECT CAR_ID 
                FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
                WHERE '2022-10-16' BETWEEN START_DATE AND END_DATE)
THEN '대여중'
ELSE "대여 가능"
END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;