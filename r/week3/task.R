par(family="AppleGothic")

city <- c("전국", "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "수원")
april <- c(41, 42, 37, 42, 42, 39, 41, 37, 42, 48) #2021-04 미세먼지
march <- c(65, 67, 60, 59, 69, 65, 63, 55, 67, 75) #2021-03 미세먼지
february <- c(43, 48, 37, 41, 46, 40, 42, 35, 47, 52) #2021-02 미세먼지
january <- c(39, 38, 36, 40, 37, 37, 39, 34, 45, 41) #2021-01 미세먼지
december <- c(38, 42, 33, 38, 39, 33, 38, 30, 44, 44) #2020-12 미세먼지

df_pm10 = data.frame("도시"=city, "april"=april, "march"=march, 
                     "february"=february, "january"=january, "december"=december)
pm10_mat_01 <- as.matrix(df_pm10[c(2, 3, 4, 5, 6)])

#선 그래프
plot(april, type="l", col="red", ylim=c(30, 80), axes=FALSE, 
     ylab="농도", xlab="지역", main = "2020-12 ~ 2021-04 미세먼지(PM10) 농도")
par(new=T)
lines(march, type="l", col="blue")
lines(february, type="l", col="green")
lines(january, type="l")
lines(december, type="l", col="skyblue")
axis(1, at=1:10, label=city)
axis(2, ylim=c(30, 80))
legend(1.15, 55, c("4월", "3월", "2월", "1월", "12월"), 
       cex=0.4, col=c("red", "blue", "green", "black", "skyblue"), lty=1)



#막대 그래프
color <- c(rainbow(10))
barplot(pm10_mat_01, beside=T, main="2020-12 ~ 2021-04 미세먼지(PM10)농도",
        ylim=c(0, 80), col=color)
legend(15, 50, city, cex=0.5, fill=color)

       