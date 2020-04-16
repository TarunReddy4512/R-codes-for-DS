library(ggplot2)
data("mtcars")
attach(mtcars)

#scatter plot between hp and cyl
x<- ggplot(mtcars, aes(x= hp, y= cyl))+ geom_point(aes(col=cyl))+ geom_smooth(method="lm", col="darkblue")
plot(x)
x+ggtitle("hp vs cyl", subtitle = "mtcars dataset")+ xlab(" hp of mtcars")+ ylab("no. of cylinders of mtcars")

#Histogram 
p<- ggplot(data = mtcars, aes(cyl, geom="cyl"))+ geom_histogram(col="yellow")
p+ggtitle("Histogram for cyl")+xlab(" no.of cylinders")


data("iris")
attach(iris)

#bar plot
q <- ggplot(data=mtcars, aes(x=cyl))+ geom_bar()
plot(q)
q+ xlab("no. of cylinders")+ ylab("Count")+ ggtitle("Bar plot of mtcars")


#density plot
k <-ggplot(mtcars, aes(mpg))
plot(k)
k+ geom_density(aes(fill=factor(cyl)), alpha=0.8)+labs(title = "Density plot", subtitle = "mpg grouped by no.of cylinders", caption = "Source: mtcars", x="mpg",fill="# cylinders")


#boxplot()
boxplot(iris$Sepal.Length~iris$Species, main = "Boxplot of Sepal Length",
xlab = "Species", ylab = "Sepal Length", col = c("red","green","blue"), cex.lab = 1.25)


#piechart()
pie(table(mtcars$cyl), col=grey.colors(3), main="Number of Cylinders in the 1974 Motor Trend Dataset")
par(mar=c(5,5,5))




