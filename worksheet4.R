########## 1 ##########
library(imager)
setwd('C:/Users/souvi/Desktop/Data Sc. Lab 1/worksheet-4-souvikr22-main/worksheet-4-souvikr22-main')
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

array <-numeric(length = 3)
colours <- function(x)
{
  pic <- load.image(x)
  pic1 <- as.array(pic[,,1,])
  for(i in 1:3)
  {
    array[i] <- mean(pic1[,,i])
  }
  if(which(array == max(array)) == 1){
    print('red')
  }else if(which(array == max(array)) == 2){
    print('green')
  }else{
    print('blue')
  }
  
}
colours('col2.png')


############################# 4 #########################

array <- numeric(length = 3)
snow <- function(x)
{
  img <- load.image(x)
  mat_img <- as.array(img[,,1,])
  l <- length(mat_img[,,1])
  if((sum(mat_img[,,1] > .8) / l) > .5 & (sum(mat_img[,,2] > .8) / l) > .5 &  (sum(mat_img[,,3] > .8) / l) > .5)
  {
   print('lot of snow')
  }else
  {
   print('not a lot of snow')
  }
  return()
}
snow('land1.jpeg')

