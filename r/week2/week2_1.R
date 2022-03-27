x <- c(1,2,3,4,5)
y <- c(90,60,80,100,70)

plot(x, y, col="red") # 컬러
plot(x, y, main = "graph2" , col="red") #main 그래프의 제목
plot(x, y, xlab="Xaxis",  col="red", main = "graph3") #xlab x축의 제목
plot(x, y, xlab="Xaxis", ylab="Yaxis", col="blue",main = "graph4") #ylab y축의 제목
plot(x, y, type='S', xlab="Xaxis", ylab="yYaxis", col="blue", main = "graph5")  #type 그래프의 타입 표현
plot(x, y, lty=10, type='l', xlab="Xaxis", ylab="Yaxis", col="blue", main = "graph6") #lty 점선 표현
plot(x, y, lwd=3, lty=3, type='l', xlab="Xaxis", ylab="Yaxis",col="blue", main = "graph7") #lwd 선의 두께 표현
plot(x, y, pch=5, col="blue", main = "graph8", xlab="Xaxis", ylab="Yaxis") #pch 그래프의 점 표현 방법
plot(x, y, cex=1, pch=25, col="blue", main = "graph9", xlab="Xaxis", ylab="Yaxis") #cex pch의 크기
plot(x, y, bg="yellow", cex=3, pch=25, col="blue", main = "graph10", xlab="Xaxis", ylab="Yaxis") #bg pch의 배경 색상 


