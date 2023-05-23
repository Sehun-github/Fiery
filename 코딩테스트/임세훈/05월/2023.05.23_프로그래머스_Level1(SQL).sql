/*
다음은 식품공장의 정보를 담은 FOOD_FACTORY 테이블입니다. 
FOOD_FACTORY 테이블은 다음과 같으며 FACTORY_ID, FACTORY_NAME, ADDRESS, TLNO는 각각 공장 ID, 공장 이름, 주소, 전화번호를 의미합니다.

Column name	Type	Nullable
FACTORY_ID	VARCHAR(10)	FALSE
FACTORY_NAME	VARCHAR(50)	FALSE
ADDRESS	VARCHAR(100)	FALSE
TLNO	VARCHAR(20)	TRUE
*/

/*
문제 - 강원도에 위치한 생산공장 목록 출력하기

FOOD_FACTORY 테이블에서 강원도에 위치한 식품공장의 
공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성해주세요. 
이때 결과는 공장 ID를 기준으로 오름차순 정렬해주세요.
*/
-- 코드를 입력하세요
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS FROM FOOD_FACTORY
WHERE ADDRESS LIKE "%강원도%"
ORDER BY FACTORY_ID ASC;



/*
문제 설명
ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는
각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.

NAME	TYPE	NULLABLE
ANIMAL_ID	VARCHAR(N)	FALSE
ANIMAL_TYPE	VARCHAR(N)	FALSE
DATETIME	DATETIME	FALSE
INTAKE_CONDITION	VARCHAR(N)	FALSE
NAME	VARCHAR(N)	TRUE
SEX_UPON_INTAKE	VARCHAR(N)	FALSE
*/

/* 문제 - 역순 정렬하기
동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
이때 결과는 ANIMAL_ID 역순으로 보여주세요.
*/
-- 코드를 입력하세요
SELECT NAME,DATETIME FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC;

