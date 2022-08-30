library(imager)
setwd('C:/Users/souvi/Desktop/Data Sc. Lab 1/worksheet-4-souvikr22-main/worksheet-4-souvikr22-main')

####################### 1 #############################################
deg180 <- function(x)
{
  a <- load.image(x)
  new <- array( 0 , dim = c(dim(a)[1] , dim(a)[2] , 1 , 3))
  for(k in 1:3)
  {
  for(i in 1:dim(a)[1])
  {
    for(j in 1:dim(a)[2])
    {
      new[dim(a)[1] - i + 1 , dim(a)[2] -j + 1 , 1 , k] <- a[i , j , 1 , k]
    }
  }
  }
  return(plot(cimg(new)))
}
deg180('dog.jpeg')

######################## 2 #############################################
dog90 <- function(x)
{
  a <- load.image(x)
  new <- array ( 0, dim = c(dim(a)[2] , dim(a)[1] , dim(a)[3] , dim(a)[4]))
  for(k in 1:dim(a)[4])
  {
    for(i in 1: dim(a)[1])
    {
     new[ , dim(a)[1] - i + 1 , dim(a)[3] , k] <- a[i , , dim(a)[3] , k]
    }
  }
  return(plot(as.cimg(new)))
}
dog90('dog.jpeg')      #anticlock

######################### 3 ############################################
d <- function(x)
{
  a <- load.image(x)
  dim <- dim(a)
  arr <- array(0 , dim=c(dim[2] , dim[1] , 1 , 3))
  for(k in 1:3){
    for(i in 1:dim[2]){
      arr[dim[2] - i +1 ,  , 1 , k] <- a[ , i , 1 , k]
    }
  }
  aa <- as.cimg(arr)
  return(plot(aa))
}
d('dog.jpeg')

######################### 4 ############################################
dog <- load.image('dog.jpeg')
newDogArray <- array(0 , dim=c(300 , 300 , 3))
dog1 <- as.array(dog[ , , 1 ,])
crop_dog <- dog[ 1:600 , 1:600 , ]
plot(as.cimg(crop_dog))
cropArr <- seq(1 , 600 , 2 ) 
for(k in 1:3){
  for(i in cropArr){
    for(j in cropArr){
      newDogArray[(i+1)/2 , (j+1)/2 , k] <- mean(crop_dog[i:i+1 , j:j+1 , k])
    }
  }
}
plot(as.cimg(newDogArray))

######################### 5 #############################################
dogImage <- load.image('dog.jpeg')
dogImage1 <- as.array(dogImage[, , 1 ,])
dogImageSquare <- dogImage1[1:600 , 1:600 , ]
newDogArray <- array(0 , dim = c(60 , 60 , 3))
cropArray <- seq(10 , 600 , 10)
for(k in 1:3){
  for(i in cropArray){
    for(j in cropArray){
      newDogArray[i / 10 , j / 10 , k] <- mean(dogImageSquare[(i-9) : i , (j-9) : j , k])
    }
  }
}
plot(as.cimg(newDogArray))
