"""
    p87. 9번.
    실수형 원소 10개를 갖는 ndarray 행렬을 선언해서 전체 원소의 합과 평균을
    구하시오. 합과 평균은 소수점 둘째 자리까지 나타내시오.
"""

import numpy as np

arr = np.array((1.9, 3, 178.176, 89.9999, 26.7, -8, 1, 12, -9.9, 72))
arr_sum = round(sum(arr), 2)  # 행렬의 합
arr_avg = round(arr_sum / len(arr), 2)  # 행렬의 원소들의 평균

print(f"행렬의 합: {arr_sum}\n행렬의 평균: {arr_avg}")
