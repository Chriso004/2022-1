# 1. 도로교통공단_시도_시군구별_월별_교통사고(2018).csv 파일에서 하나의 시군구를
# 선택하여, 5개 이상으로 열로 데이터를 만들어서 선 그래프, 막대그래프, 파이챠트
# 등으로 10개 이상을 만드세요. 범례도 추가하기 바람. 예) 종로구, 열=("사망자수", "부상자수", "중상", "경상", "부상신고“)
# 2.도로교통공단_시도_시군구별_월별_교통사고(2018).csv 파일에서 하나의 시도를 선
# 택하여, 시군구별 사망자(혹은 "부상자수", "중상", "경상", "부상신고“ 중 1개를 선택)
# 평균을 구한 후, x축을 시군구별로 이름을 표시하는 선 그래프, 막대그래프, 파이챠
# 트 등을 10개이상을 만드세요. 범례도 추가하기 바람.
# - 이전에 배운 내용도 사용할 수 있음. - 그린 그래프 중 베스트 작품을 선택하여 선택한 이유를 쓰세요. 예) 시도==강원도, 시군구별 = ("춘천시", "원주시" , "동해시" , "강릉시" , "속초시", "태백시" , "삼척시"
#                                                                                 , "홍천군", "횡성군" , "영월군" , "평창군" , "정선군", "철원군", "화천군", "양구군
# ", "인제군", "고성군" , "양양군")
# [실습 과제]
# dplyr 패키지, 파이프라인 연산자를 사용
# (1) 관심있는 시군구의 선. 막대그래프, 파이챠트
# (2) 관심있는 시나 도 중에 하나 선택해서
# 시구군별 평균을 구한 후 그래프 그리기
# - 범례, main, xlab, ylab 사용하여 제목, 라벨을 표시
# [실습 2]
# 인덱스와 subset()함수를 사용하여 그래프를 그리세요. 필요한 방법은 인터넷 검색

t1_data <- read.csv("/Users/chr1s0/desktop/2022-1/R/week4/src/data(2018).csv")
df_1 <- t1_data %>% filter(시군구 == "관악구") %>% select(발생건수, 사망자수, 부상자수, 중상, 경상)
count <- df_1$발생건수
death_count <- df_1$사망자수
injury_count <- df_1$부상자수
serious_count <- df_1$중상
slight_count <- df_1$경상
colors <- c("skyblue", "red", "pink", "yellow", "purple")
month <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
month <- paste(month, "월")
mdf_1 <- as.matrix(df_1)
df_1_colsum <- colSums(df_1)

par(bg="gray")
plot(month, count, type="l", xlab="월", ylab="발생 횟수", 
     main="관악구 교통사고 발생현황(2018)", col="skyblue", ylim=c(0, 160))
par(new="T")
lines(death_count, col="red")
lines(injury_count, col="pink")
lines(serious_count, col="yellow")
lines(slight_count, col="purple")
axis(side=1, at=seq(1, 12, by=1))
axis(side=2, at=seq(0, 150, by=25))
legend(1.25, 70, label, cex=0.7, lty=1, col=colors)

plot(month, injury_count, type="h", xlab="월", ylab="발생 횟수", main="관악구 교통사고 발생현황(2018)", col="skyblue", ylim=c(0, 160), lwd=3)
par(new="T")
lines(count, col="pink", type="h", lwd=3)
lines(slight_count, col="purple", type="h", lwd=3)
lines(serious_count, col="yellow", type="h", lwd=3)
lines(death_count, col="red", type="h", lwd=3)
axis(side=1, at=seq(1, 12, by=1))
axis(side=2, at=seq(0, 150, by=25))
legend(1.25, 70, c("부상자수", "사망자수", "발생건수", "중상", "경상"), cex=0.7, lty=1, col=colors, lwd=3)

pct <- round(df_1_colsum/sum(df_1_colsum)*100, 2)
label <- c("발생건수", "사망자수", "부상자수", "중상", "경상")
label <- paste(label, pct,"%")
pie(df_1_colsum, col=colors, labels=label, main="관악구 교통사고 발생현황 합계(2018)")

bar_color <- c("red", "orange", "yellow", "lightgreen", 
               "green", "skyblue", "blue", "purple", "rosybrown", "brown", "white", "black")
barplot(mdf_1, beside=T, col=bar_color, 
        main="관악구 교통사고 발생현황 합계(2018)", ylim=c(0, 175), ylab="발생 횟수")
axis(side=2, at=seq(0, 175, by=25))
legend(15, 175, month, cex=0.6, col=bar_color, lty=1, lwd=3)

barplot(mdf_1, beside=T, col=bar_color, main="관악구 교통사고 발생현황 합계(2018)", xlim=c(0, 175), xlab="발생 횟수", horiz=T)
axis(side=1, at=seq(0, 175, by=25), cex=0.8)
legend(150, 30, month, cex=0.6, col=bar_color, lty=1, lwd=3)
