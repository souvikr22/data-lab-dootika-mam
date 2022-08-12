#1

seat <- read.csv("https://dvats.github.io/assets/course/mth208/seating.csv")
colnames(seat) <- c('roll','seat')
sum(seat$roll > 220000)

#2

cricket <- read.csv("https://dvats.github.io/assets/course/mth208/battingbowling.csv")
cricket
colnames(cricket) <- c('' , 'batting' , 'bowling' , 'team')
cricket

##subpart_1

allrounder <- subset ( cricket , batting > 25 & bowling < 40 )
allrounder
colnames ( allrounder ) 

##subpart_2,3

teams <- allrounder $ team
teams

table (teams)  #table function is used for frequency distribution

#3

x= seq ( 0 , 10 , 2)
plot( x , y=x , type = 'l' ,col = "red" , xlab = 'x' , ylab = 'y')

#4

n <- rep ( 1: 1000 )
plot ( n , (1+1/n)^n , type = 'l')
abline ( h = exp(1) , col = 'red' )


######################################################

install.packages('imager')              #installing imager package
setwd("/users/math/msc/souvikr22/Desktop/R/worksheet-4-souvikr22-main")

library(imager)              #calling the package 
  
dog <- load.image("dog.jpeg")
dim(dog) # stored as RGB  
plot(dog) # plot image
landscape <- load.image("land1.jpeg")
  dim(landscape) # stored as RGB  
  plot(landscape) # plot image
  
  
########## 1 ##########
library(imager)
setwd('/users/math/msc/souvikr22/Desktop/R/worksheet-4-souvikr22-main')
dog <- load.image('dog.jpeg')
dim.dog <- dim(dog)
dim.dog
colours <- as.array(dog[,,1,])
dim(colours)
red.dog <- colours[,,1]
red.dog

green.dog <- colours[,,2]

blue.dog <- colours[,,3]
dist_green <- sqrt(red.dog ^ 2 + (1 - green.dog)^2 + blue.dog ^ 2)
cell_green <- which(dist_green == min(dist_green) , arr.ind= T)
cell_green

load.image('dog.jpeg')
plot(dog)
points(cell_green , col = 'red' , cex = 1 , pch = 19)      ###plotting the purest green colour

 ################### 2 ########################
dist_red <- sqrt((1-red.dog) ^ 2 + green.dog ^2 + blue.dog ^2)
cell_red <- which(dist_red == min(dist_red) , arr.ind = T)
points(cell_red , col = 'blue' , cex = 1 , pch = 19)

dist_blue <- sqrt(red.dog ^ 2 + green.dog ^2 + (1-blue.dog) ^2)
cell_blue <- which(dist_blue == min(dist_blue) , arr.ind = T)
points(cell_blue , col = 'green' , cex = 1 , pch = 19)


############################# 3 ######################
col11 <- load.image('col1.png')
col22 <- load.image('col2.png')
col33 <- load.image('col3.png')

col1 <- as.array(col11[,,1,])
col2 <- as.array(col22[,,1,])
col3 <- as.array(col33[,,1,])

arr_col1 <- as.array(col1[,,1])
