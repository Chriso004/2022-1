#측정소별 대기 현황

location <- c("중구", "종로구", "용산구", "은평구", "서대문", "마포구", "광진구", "성동구", "중랑구", "동대문")
o3 <- c(0.037, 0.037, 0.027, 0.039, 0.035, 0.031, 0.033, 0.037, 0.033, 0.036) #오존 농도
co2 <- c(0.017, 0.016, 0.018, 0.015, 0.014, 0.020, 0.018, 0.027, 0.018, 0.017) #이산화탄소 농도
co <- c(0.3, 0.4, 0.3, 0.3, 0.4, 0.4, 0.2, 0.4, 0.4, 0.3) #일산화탄소 농도
so2 <- c(0.003, 0.003, 0.003, 0.003, 0.004, 0.003, 0.002, 0.003, 0.002, 0.003) #아황산가스 농도

df_atmosphere = data.frame("지역"=location, "오존"=o3, "이산화탄소"=co2, "일산화탄소"=co, "아황산가스"=so2)
atmosphere_mat <- as.matrix(df_atmosphere[c(2, 3, 4, 5)])


plot(o3, type="b", ylim=c(0, 0.40), axes=FALSE, xlab="", 
     ylab="", main="측정소별 대기 현황", pch=25, cex=0.8, col="red")
par(new=T)
lines(co2, type="b", cex=0.8)
lines(so2, type="b", cex=0.8, col="blue", pch=5)
lines(co, type="b", cex=0.8, col="green", pch=17)
axis(1, at=1:10, label=location, cex=0.8)
axis(2, ylim=c(0, 0.40))
legend(1.25, 0.25, c("오존", "이산화탄소", "아황산가스", "일산화탄소"),
       cex=0.8, fill=c("red", "black", "blue", "green"), lty=1)
