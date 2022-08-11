#########area of a circle############
circle <- function(radius)
{
  ar <- pi * radius ^ 2
  return(ar)
}
circle(1)


##########larger of two inputs############
fx <- function(x , y)
{
  if(x > y)
  {
    z=x
  }
  else if(x == y)
  {
    z = print("same")
  }
  else
  {
   z = y
  }
  return(z)
}
fx(3,3)

########roll a die 1000 & output is an even number############
arr <- numeric(length = 1000)
roll <- function(n)
{
  for( i in 1:n)
  {
  outcome <- sample(x = 1:6 , size=1)
  arr[i] <- outcome
  }
  return(arr)
}
roll(1000)

j <- 0
for( k in 1:1000)
{
  if( (arr[k] %% 2) == 0)
  {
    j = j+1                                 #issue
  }
  else
  {
    j = j
  }
}
j

############proprotion of numbers###########
count <- 0
fx <- function(n)
{
  arr <- numeric( length = 1000)
  for( i in 1:n)
  {
    arr[i] <- runif(1 , 0 , 1)
    if(arr[i] > 0.1 & arr[i] < 0.2)
    {
      count <-  count + 1
    }
  }
  return(count/n)
}
fx(1000)

##################collection of toys#############
rm(list = ls())
char <- c("Harry", " Dumbledore", "Hermione", "Ron", "Neville", "Mcgonagall", "Doby")
prob <- c(0.25, 0.2, 0.2, 0.15, 0.1, .5, 0.5)

Hogwarts <- c()

while(length(unique(Hogwarts)) < 7){
  Hogwarts <- c(Hogwarts, sample(char, 1, prob, replace = T))
}
 
length(Hogwarts)


#######