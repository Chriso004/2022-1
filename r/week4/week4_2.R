t2_data <- read.csv("/Users/chr1s0/desktop/2022-1/R/week4/src/data(2018).csv")
df_2 <- subset(t2_data, 시도=="강원", select=c("시군구", "부상신고"))
df_2_mean <- df_2 %>% group_by(시군구) %>% summarise(report_count=mean(부상신고))
mdf_2 <- as.matrix(df_2_mean)


report_count <- df_2_mean$report_count
location <- df_2_mean$시군구
gray_colors <- 
c("gray0", "gray5"
  ,"gray10", "gray15"
  ,"gray20", "gray25"
  ,"gray30", "gray35"
  ,"gray40", "gray45"
  ,"gray50", "gray55"
  ,"gray60", "gray65"
  ,"gray70", "gray75"
  ,"gray80", "gray85")
green_colors <-
c("darkgreen", "darkolivegreen"
  ,"darkolivegreen1", "darkolivegreen2"
  ,"darkolivegreen3", "darkolivegreen4"
  ,"darkseagreen", "darkseagreen1"
  ,"darkseagreen2", "darkseagreen3"
  ,"darkseagreen4", "forestgreen"
  ,"green", "green1"
  ,"green2", "green3"
  ,"green4", "greenyellow")

green_colors_2 <-
c("lawngreen", "lightgreen"
  ,"lightseagreen", "limegreen"
  ,"mediumseagreen", "mediumspringgreen"
  ,"palegreen", "palegreen1"
  ,"palegreen2", "palegreen3"
  ,"palegreen4", "seagreen"
  ,"seagreen1", "seagreen2"
  ,"seagreen3", "seagreen4"
  ,"springgreen", "springgreen1")

barplot(report_count, names.arg=location, 
        main="강원도 시군구별 부상신고 평균", col=green_colors_2, ylim=c(0, 16))
axis(side=2, at=seq(0, 16, by=1))

pie(report_count, location, main="강원도 시군구별 부상신고 평균", col=rainbow(18))


plot(report_count, axes=FALSE, type="p", main="강원도 시군구별 부상신고 평균",
     xlab="", ylab="신고 횟수", lwd=7, col="orangered")
axis(side=1, at=1:18, labels=location)
axis(side=2, at=0:16)
