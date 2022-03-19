"""
    교제 p87. 10번.
    0~50 사이의 임의의 원소(정수형, 중복가능)을 500개 만들어서
    가장 중복이 많이 나온 원소 3개를 원소 값과 중복 횟수로 출력하시오.
"""


from random import randint


def set_randoms(li, s):
    for i in range(s):
        r = randint(0, 50)
        li[r] = li[r] + 1


def get_maximum(li, s):
    temp = {}
    for i in range(s):
        value = max(li)
        index = li.index(value)
        temp[index] = li[index]
        li[index] = 0

    return temp


count_range = 51
size = 500
count = [0 for i in range(count_range)]
set_randoms(count, size)

print(count)
answer = 3
maximum_counts = get_maximum(count, answer)

for i in maximum_counts:
    print(f"{i}: {maximum_counts[i]}회")

print(count)







