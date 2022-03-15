month <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) #2021-2 ~ 2021-12
vec1_pop <- c(286756, 286041, 286030, 286177, 286178, 286210, 286302, 287091, 287604, 287966, 288322) #춘천시 인구수
vec1_house <- c(127338, 126993, 127227, 127486, 127689, 127886, 128183, 128894, 129384, 129730, 130277) #춘천시 세대수

vec2_pop <- c(213412, 213231, 212909, 212890, 212681, 212957, 213025, 213151, 213155, 213093, 212965)
vec2_house <- c(101697, 101652, 101768, 101729, 101951, 102198, 102334, 102629, 102774, 102878, 102879)

df1_pop=data.frame("월"=month, "인구수"=vec1_pop)
df1_house=data.frame("월"=month, "세대수"=vec1_house)

df2_pop=data.frame("월"=month, "인구수"=vec2_pop)


plot(month, vec1_pop, main="춘천시 인구수(2021-2 ~ 2021-12)", xlab="월", ylab="인구수", type="b", pch=16,ylim=c(286000, 290000), col="red")
lines(house, type="b", pch=2)
plot(month, vec1_house, main="춘천시 세대수(2021-2 ~ 2021-12)", xlab="월", ylab="세대수", type="b", pch=2, ylim=c(126000, 132000))
x_axis=seq(2,12,by=1)
axis(side=1,at=x_axis)







par(family="AppleGothic")
