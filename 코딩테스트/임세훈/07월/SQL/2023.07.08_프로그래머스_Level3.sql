/*
문제 - 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
USED_GOODS_BOARD와 USED_GOODS_FILE 테이블에서 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회하는 SQL문을 작성해주세요.
첨부파일 경로는 FILE ID를 기준으로 내림차순 정렬해주세요. 기본적인 파일경로는 /home/grep/src/ 이며, 게시글 ID를 기준으로 디렉토리가 구분되고, 
파일이름은 파일 ID, 파일 이름, 파일 확장자로 구성되도록 출력해주세요. 조회수가 가장 높은 게시물은 하나만 존재합니다.
*/

-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/',B.BOARD_ID,"/",F.FILE_ID,F.FILE_NAME,F.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD B JOIN USED_GOODS_FILE F
ON B.BOARD_ID = F.BOARD_ID
WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY F.FILE_ID DESC;

/*
문제 - 헤비 유저가 소유한 장소
이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 
헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성해주세요.
*/

-- 코드를 입력하세요
SELECT ID,NAME,HOST_ID
FROM PLACES 
WHERE HOST_ID IN (SELECT HOST_ID FROM PLACES GROUP BY HOST_ID HAVING COUNT(*) >=2);

/*
문제 - 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 대여 시작일을 기준으로 2022년 8월부터 2022년 10월까지 
총 대여 횟수가 5회 이상인 자동차들에 대해서 해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력하는 SQL문을 작성해주세요. 
결과는 월을 기준으로 오름차순 정렬하고, 월이 같다면 자동차 ID를 기준으로 내림차순 정렬해주세요. 특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외해주세요.
*/

-- 코드를 입력하세요
SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATE_FORMAT(START_DATE,"%Y-%m") BETWEEN '2022-08' AND '2022-10'
AND 
CAR_ID IN 
        (SELECT CAR_ID 
         FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
         WHERE DATE_FORMAT(START_DATE,"%Y-%m") 
         BETWEEN '2022-08' AND '2022-10' 
         GROUP BY CAR_ID
         HAVING COUNT(*)>=5)
GROUP BY CAR_ID, MONTH(START_DATE)
HAVING RECORDS>=1
ORDER BY MONTH ASC, CAR_ID DESC;