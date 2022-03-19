"""
    6. [1,50] 범위안의 정수형 숫자 1000개를 생성하고 그중 가장 빈도수가
    높은 수를 출력하시오.
    (참고) 랜덤 수 생성
    from random import randint
    # 난수 1000개 생성
    numbers = [randint(1,50) for i in range(1000)]
"""

from random import randint

counts = [0 for i in range(50)]
for i in range(1000):
    r = randint(1, 50)
    counts[r - 1] = counts[r - 1] + 1

value = max(counts)
index = counts.index(value)

print("최고 빈도수:", index)
