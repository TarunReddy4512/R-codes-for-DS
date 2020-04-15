#1 sample 1 tail T test

x  <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3)


#2 sample 2 tails T test

Control = c( 91, 87, 99, 77, 88, 91) 
Treat = c( 101, 110, 103, 93, 99, 104) 
t.test (Control, Treat, alternative='two.sided')



#condidence intervals

install.packages("gmodels")
library(gmodels)
install.packages('nycflights13')
library(nycflights13)
data<-nycflights13::flights

dep_delay<-data$dep_delay
dep_delay1<-dep_delay[!is.na(dep_delay)]
ci(dep_delay1,confidence = 0.95)

