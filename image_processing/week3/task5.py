"""
    5. 시간을 입력했을 때 30분 전의 시간을 출력하는 함수를 구현하시오.
    ex) 함수 : function_time(h, m), 입력 : (1, 10)
    출력 : 1시 10분 -> 12시 40분
"""

time = input("hour, minutes(ex) 10, 1): ")
hour, minutes = time.split(",")
total_minutes = int(hour) * 60 + int(minutes)
previous_minutes = total_minutes - 30

after_hour = previous_minutes // 60
if after_hour <= 0:
    after_hour = after_hour + 12
after_minutes = previous_minutes % 60

print(f"{after_hour}시 {after_minutes}분")
