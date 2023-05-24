# 코딩테스트

## 프로그래머스_Level2
> #### List append 보다 set add 하는게 훨씬더 속도가 빠르다!! -- 대신 set은 원소 하나당 하나씩밖에 안들어감 주의
> #### 문자열 짝 맞추는거는 - Stack으로 해결
> #### Count함수도 시간이 오래 걸려 될수 있는데로 사용 안하는게 좋다.
> #### 몫구하기: //, str1의 앞글자가 str2와 같은지 확인: str1.startswith("str2")
> #### list.pop(4) -> 리스트의 4번째 원소 없애기
> #### sorted(dict.items(), key=lambda x:x[1])     # value 값을 기준으로 오름차순 정렬


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
