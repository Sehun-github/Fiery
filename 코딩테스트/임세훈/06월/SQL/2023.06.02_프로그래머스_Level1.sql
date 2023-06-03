/*
문제 - 인기있는 아이스크림
상반기에 판매된 아이스크림의 맛을 총주문량을 기준으로 내림차순 정렬하고 
총주문량이 같다면 출하 번호를 기준으로 오름차순 정렬하여 조회하는 SQL 문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT FLAVOR FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;

/*
문제 - 모든 레코드 조회하기
동물 보호소에 들어온 모든 동물의 정보를 ANIMAL_ID순으로 조회하는 SQL문을 작성해주세요. 
SQL을 실행하면 다음과 같이 출력되어야 합니다.
*/

-- 코드를 입력하세요
SELECT * FROM ANIMAL_INS
ORDER BY ANIMAL_ID;