- **문제설명** : 해커들의 최종 스코어를 산출하여, 스코어가 높은 해커들부터 정렬하는 문제. 상세 설명은 해당 폴더 pdf 파일 참조
- **최종 스코어 산출 방법** : 각 챌린지 별 최대 점수를 더한 점수이며, 0점은 포함하지 않음.
- **링크** : https://www.hackerrank.com/challenges/contest-leaderboard/problem
- **해결 포인트**
  - 집계함수를 쓰기 위해서 group by를 사용
  - group by에 조건을 주는 방법 : having 절
  