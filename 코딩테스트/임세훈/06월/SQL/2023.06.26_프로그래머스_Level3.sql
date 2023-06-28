/*
문제 - 오랜 기간 보호한 동물(1)
아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
이때 결과는 보호 시작일 순으로 조회해야 합니다.
*/

-- 코드를 입력하세요
SELECT I.NAME, I.DATETIME 
FROM ANIMAL_INS I LEFT JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.ANIMAL_ID IS NULL
ORDER BY I.DATETIME ASC
LIMIT 3;

/*
문제 - 있었는데요 없었습니다
관리자의 실수로 일부 동물의 입양일이 잘못 입력되었습니다. 
보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회하는 SQL문을 작성해주세요.
이때 결과는 보호 시작일이 빠른 순으로 조회해야합니다.
*/

-- 코드를 입력하세요
SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.DATETIME > O.DATETIME
ORDER BY I.DATETIME;

/*
문제 - 오랜 기간 보호한 동물(2)
입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회하는 SQL문을 작성해주세요.
 이때 결과는 보호 기간이 긴 순으로 조회해야 합니다.
*/

-- 코드를 입력하세요
SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY DATEDIFF(O.DATETIME,I.DATETIME) DESC
LIMIT 2;
