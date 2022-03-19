"""
    2. 구구단을 2단부터 9단까지 모두 출력하시오. (반복문 사용)
"""


def gugudan(start, end):
    for i in range(start, end + 1):
        for j in range(1, end + 1):
            print(f"{i} * {j} = {i * j} ", end="")
        print()


gugudan(2, 9)
