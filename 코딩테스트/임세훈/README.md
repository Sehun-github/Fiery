# 코딩테스트

## 프로그래머스_Pyhon
> #### List append 보다 set add 하는게 훨씬더 속도가 빠르다!! -- 대신 set은 원소 하나당 하나씩밖에 안들어감 주의
> #### 문자열 짝 맞추는거는 - Stack으로 해결
> #### Count함수도 시간이 오래 걸려 될수 있는데로 사용 안하는게 좋다. // from collection import Counter로 개수를 구하면 시간복잡도를 줄일수 있다.
> #### 몫구하기: //, str1의 앞글자가 str2와 같은지 확인: str1.startswith("str2")
> #### list.pop(4) -> 리스트의 4번째 원소 없애기
> #### sorted(dict.items(), key=lambda x:x[1])     # value 값을 기준으로 오름차순 정렬
> #### 정렬하기 - answer.sort(key=lambda x:(x[0].lower(), int(x[1]))) # 첫번째는 이름순, 두번째는 숫자순서로 정렬
> #### 시간줄이기 - from collections import deque # deque사용, pop(0)와 같은 메서드를 수행할 때 리스트라면 O(N) 연산을 수행하지만, deque는 O(1) 연산을 수행하기 때문이다.
> #### 리스트 할당: [[0]*n for _ in range(m)]
> #### 2차원 -> 1차원 : sum("2차원 리스트",[])
```
스택: 마지막에 들어온것을 뺀다
큐: 선입선출
LRU 알고리즘: 가장 오랫동안 참조되지 않은 페이지를 교체
```
#### 완전탐색 알고리즘
```
완전 탐색 알고리즘 (순열 이용)
from itertools import permutations

for i in permutations(list,len(list)):
  print(i)
```
#### 10진수 -> n진수로 바꾸기
```
# n값을 k진수로 변환
    value = ""
    while n:
        value += str(n % k)
        n = n // k
    
    value = value[::-1]
```
#### 소수 개수 구하기 - (루트 N)+1 까지만 해도 된다.
```
 # 소수 구하기
    answer=0
    for i in num_list:
        cnt=0
        for j in range(2,int(i**0.5)+1):
            if i% j == 0:
                cnt +=1
                break
        if cnt == 0:
            answer +=1
```
#### 힙정렬 - import heapq
```
heappush(list,"data") # 리스트에 데이터 추가 및 자동 오름차순 정렬
heappop("data") # 첫번째 데이터 가져오고 삭제

※ 내림차순은 할때는 -를 붙여서 -1 곱하기
```

## 프로그래머스_SQL
#### SELECT문
```
상위 N개 - LIMIT N
년도 - YEAR("열이름")
월 - MONTH("열이름")
특정한 값 우선 정렬 - ORDERY BY FIELD(열이름, "값1", "값2") 
NULL 값 치환 - IFNULL('열 이름', 'NULL에 치환할 값')
날짜 포맷 수정 - Date_Format('열 이름', '%Y-%m-%d') -> '2023-06-01'
시간 차이 함수 - DATEDIFF('열 이름', 'END DATE', 'START DATE')+1 // * +1을 해줘야 차이가 나온다.
```

